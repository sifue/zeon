'use server';

import { encodedRedirect } from '@/utils/utils';
import { createClient } from '@/utils/supabase/server';
import { redirect } from 'next/navigation';

// Google認証のみを使用するため、メールアドレス認証関連のアクションは削除しました

export const signOutAction = async () => {
  const supabase = await createClient();
  await supabase.auth.signOut();
  return redirect('/sign-in');
};

// 科目一覧を取得する
export const getSubjects = async (enrollmentGrade?: number) => {
  const supabase = await createClient();
  
  // クエリを作成
  let query = supabase
    .from('subjects')
    .select('code, name, faculties, enrollment_grade, quarters')
    .order('enrollment_grade', { ascending: true })
    .order('code', { ascending: true });
  
  // 特定の年次の科目のみを取得する場合
  if (enrollmentGrade !== undefined) {
    query = query.eq('enrollment_grade', enrollmentGrade);
  }
  
  const { data: subjects, error } = await query;
  
  if (error) {
    return [];
  }
  
  return subjects;
};


// 科目の評価データを取得する
export const getSubjectEvaluations = async () => {
  const supabase = await createClient();
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();
  
  // 非表示評価のIDを取得
  const { data: invisibleEvals } = await supabase
    .from('invisible_evaluations')
    .select('code, evaluator');
  
  // 非表示評価のIDをセットに変換
  const invisibleSet = new Set<string>();
  if (invisibleEvals) {
    invisibleEvals.forEach(item => {
      const key = `${item.code}-${item.evaluator}`;
      invisibleSet.add(key);
    });
  }
  
  // 科目ごとの評価数と平均評価を取得
  const { data, error } = await supabase
    .from('evaluations')
    .select(`
      code,
      evaluation,
      evaluator
    `);
  
  if (error) {
    return {};
  }
  
  // 管理者でない場合は非表示評価を除外
  let filteredData = data;
  if (!isAdmin) {
    filteredData = data.filter(evaluation => 
      !invisibleSet.has(`${evaluation.code}-${evaluation.evaluator}`)
    );
  }
  
  
  // 科目ごとに評価数と平均評価を計算
  const evaluationStats: Record<string, { count: number; average: number }> = {};
  
  filteredData.forEach((evaluation) => {
    if (!evaluationStats[evaluation.code]) {
      evaluationStats[evaluation.code] = {
        count: 0,
        average: 0,
      };
    }
    
    evaluationStats[evaluation.code].count += 1;
    evaluationStats[evaluation.code].average += evaluation.evaluation;
  });
  
  // 平均を計算
  Object.keys(evaluationStats).forEach((code) => {
    if (evaluationStats[code].count > 0) {
      evaluationStats[code].average = 
        evaluationStats[code].average / evaluationStats[code].count;
    }
  });
  
  return evaluationStats;
};

// 科目コードから科目の詳細情報を取得する
export const getSubjectByCode = async (code: string) => {
  const supabase = await createClient();
  
  const { data: subject, error } = await supabase
    .from('subjects')
    .select('*')
    .eq('code', code)
    .single();
  
  if (error) {
    return null;
  }
  
  return subject;
};

// 科目コードに基づいてレビュー一覧を取得する
export const getEvaluationsBySubjectCode = async (code: string) => {
  const supabase = await createClient();
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();
  
  // 非表示評価のIDを取得
  const { data: invisibleEvals } = await supabase
    .from('invisible_evaluations')
    .select('code, evaluator');
  
  // 非表示評価のIDをセットに変換
  const invisibleSet = new Set<string>();
  if (invisibleEvals) {
    invisibleEvals.forEach(item => {
      const key = `${item.code}-${item.evaluator}`;
      invisibleSet.add(key);
    });
  }
  
  // 評価を取得
  const { data: evaluations, error } = await supabase
    .from('evaluations')
    .select(`
      id,
      code,
      evaluator,
      evaluation,
      review,
      year,
      quarter,
      created_at,
      updated_at
    `)
    .eq('code', code)
    .order('updated_at', { ascending: false });
  
  if (error || !evaluations) {
    return [];
  }
  
  // 管理者でない場合は非表示評価を除外
  let filteredEvaluations = evaluations;
  if (!isAdmin) {
    filteredEvaluations = evaluations.filter(evaluation => 
      !invisibleSet.has(`${evaluation.code}-${evaluation.evaluator}`)
    );
  }
  
  
  // 評価にダミーのユーザー情報と非表示状態を追加
  const evaluationsWithUsers = filteredEvaluations.map(evaluation => {
    const isInvisible = invisibleSet.has(`${evaluation.code}-${evaluation.evaluator}`);
    
    return {
      ...evaluation,
      users: {
        email: `user-${evaluation.evaluator.substring(0, 8)}@example.com`,
        raw_user_meta_data: {
          name: `ユーザー${evaluation.evaluator.substring(0, 4)}`
        }
      },
      is_invisible: isInvisible
    };
  });
  
  // 役に立った数を取得
  const { data: usefuls } = await supabase
    .from('usefuls')
    .select('evaluation_id')
    .in('evaluation_id', evaluationsWithUsers.map(e => e.id));
  
  // 役に立った数をマッピング
  const usefulCounts: Record<number, number> = {};
  if (usefuls) {
    // 各評価IDごとに役に立った数をカウント
    usefuls.forEach((item: { evaluation_id: number }) => {
      if (!usefulCounts[item.evaluation_id]) {
        usefulCounts[item.evaluation_id] = 0;
      }
      usefulCounts[item.evaluation_id]++;
    });
  }
  
  // 評価に役に立った数を追加
  type Evaluation = typeof evaluationsWithUsers[0];
  const evaluationsWithUsefuls = evaluationsWithUsers.map((evaluation: Evaluation) => ({
    ...evaluation,
    useful_count: usefulCounts[evaluation.id] || 0
  }));
  
  return evaluationsWithUsefuls;
};

// 特定の科目の評価統計を取得する
export const getEvaluationStatsByCode = async (code: string) => {
  const supabase = await createClient();
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();
  
  // 非表示評価のIDを取得
  const { data: invisibleEvals } = await supabase
    .from('invisible_evaluations')
    .select('code, evaluator');
  
  // 非表示評価のIDをセットに変換
  const invisibleSet = new Set<string>();
  if (invisibleEvals) {
    invisibleEvals.forEach(item => {
      const key = `${item.code}-${item.evaluator}`;
      invisibleSet.add(key);
    });
  }
  
  // 評価を取得
  const { data, error } = await supabase
    .from('evaluations')
    .select('evaluation, evaluator')
    .eq('code', code);
  
  if (error || !data || data.length === 0) {
    return { count: 0, average: 0 };
  }
  
  // 管理者でない場合は非表示評価を除外
  let filteredData = data;
  if (!isAdmin) {
    filteredData = data.filter(evaluation => 
      !invisibleSet.has(`${code}-${evaluation.evaluator}`)
    );
  }
  
  
  if (filteredData.length === 0) {
    return { count: 0, average: 0 };
  }
  
  const count = filteredData.length;
  const sum = filteredData.reduce((acc, curr) => acc + curr.evaluation, 0);
  const average = sum / count;
  
  return { count, average };
};

// 管理者かどうかをチェックする
export const checkIsAdmin = async () => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    return false;
  }
  
  // adminsテーブルをチェック
  const { data: admin, error } = await supabase
    .from('admins')
    .select('*')
    .eq('uid', user.id)
    .maybeSingle();
  
  if (error) {
    return false;
  }
  
  return !!admin;
};

// ユーザーの評価を取得する
export const getUserEvaluation = async (code: string) => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    return null;
  }
  
  const { data, error } = await supabase
    .from('evaluations')
    .select('*')
    .eq('code', code)
    .eq('evaluator', user.id)
    .maybeSingle();
  
  if (error || !data) {
    return null;
  }
  
  return data;
};

// 評価を投稿または更新する
export const submitEvaluation = async (evaluation: {
  id?: number;
  code: string;
  evaluation: number;
  review: string;
  year: number;
  quarter: string;
}) => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    throw new Error('認証されていません');
  }
  
  // 非表示状態をチェック
  const isInvisible = await checkEvaluationInvisible(evaluation.code, user.id);
  if (isInvisible) {
    throw new Error('あなたの評価はZEON運営チームにより非表示にされています');
  }
  
  // 評価データを準備
  const evaluationData = {
    code: evaluation.code,
    evaluator: user.id,
    evaluation: evaluation.evaluation,
    review: evaluation.review,
    year: evaluation.year,
    quarter: evaluation.quarter,
    updated_at: new Date().toISOString(),
  };
  
  let result;
  
  // 既存の評価がある場合は更新、なければ新規作成
  if (evaluation.id) {
    // 更新
    result = await supabase
      .from('evaluations')
      .update(evaluationData)
      .eq('id', evaluation.id)
      .eq('evaluator', user.id); // 自分の評価のみ更新可能
  } else {
    // 新規作成
    result = await supabase
      .from('evaluations')
      .insert({
        ...evaluationData,
        created_at: new Date().toISOString(),
      });
  }
  
  if (result.error) {
    // 重複キーエラーの場合は、非表示状態をチェック
    if (result.error.message.includes('duplicate key value violates unique constraint')) {
      const isInvisible = await checkEvaluationInvisible(evaluation.code, user.id);
      if (isInvisible) {
        throw new Error('あなたの評価はZEON運営チームにより非表示にされています');
      }
    }
    throw new Error(result.error.message);
  }
  
  return result.data;
};

// 評価を削除する
export const deleteEvaluation = async (id: number) => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    throw new Error('認証されていません');
  }
  
  // 評価を削除
  const { error } = await supabase
    .from('evaluations')
    .delete()
    .eq('id', id)
    .eq('evaluator', user.id); // 自分の評価のみ削除可能
  
  if (error) {
    throw new Error(error.message);
  }
  
  return true;
};

// フォームアクション: 評価を投稿または更新する
export async function submitEvaluationAction(formData: FormData) {
  'use server';
  
  try {
    const code = formData.get('code') as string;
    const evaluation = parseInt(formData.get('evaluation') as string);
    const review = formData.get('review') as string;
    const year = parseInt(formData.get('year') as string);
    const quarter = formData.get('quarter') as string;
    const id = formData.get('id') ? parseInt(formData.get('id') as string) : undefined;
    
    if (!code || isNaN(evaluation) || !review || isNaN(year) || !quarter) {
      throw new Error('必須項目が不足しています');
    }
    
    await submitEvaluation({
      id,
      code,
      evaluation,
      review,
      year,
      quarter,
    });
    
    // リダイレクトせずに成功結果を返す
    return { success: true, code };
  } catch (error) {
    console.error('評価の送信中にエラーが発生しました', error);
    // エラーが発生した場合は、エラーを再スローせずに結果を返す
    return { success: false, code: formData.get('code') as string };
  }
}

// フォームアクション: 評価を削除する
export async function deleteEvaluationAction(formData: FormData) {
  'use server';
  
  try {
    const id = parseInt(formData.get('id') as string);
    const code = formData.get('code') as string;
    
    if (isNaN(id)) {
      throw new Error('評価IDが不正です');
    }
    
    await deleteEvaluation(id);
    
    // リダイレクトせずに成功結果を返す
    return { success: true, code };
  } catch (error) {
    console.error('評価の削除中にエラーが発生しました', error);
    // エラーが発生した場合は、エラーを再スローせずに結果を返す
    return { success: false, code: formData.get('code') as string };
  }
}

// 特定の評価に対してユーザーが「役に立った」を押したかどうかを確認する
export const checkUserUseful = async (evaluationId: number) => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    return false;
  }
  
  const { data } = await supabase
    .from('usefuls')
    .select('id')
    .eq('evaluation_id', evaluationId)
    .eq('uid', user.id)
    .maybeSingle();
  
  return !!data;
};

// 評価IDのリストを受け取り、ユーザーが「役に立った」を押した評価IDのセットを返す
export const getUserUsefulEvaluations = async (evaluationIds: number[]) => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user || evaluationIds.length === 0) {
    return new Set<number>();
  }
  
  const { data } = await supabase
    .from('usefuls')
    .select('evaluation_id')
    .eq('uid', user.id)
    .in('evaluation_id', evaluationIds);
  
  if (!data) {
    return new Set<number>();
  }
  
  return new Set(data.map(item => item.evaluation_id));
};

// 役に立ったボタンを押す/取り消す
export const toggleUseful = async (evaluationId: number) => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    throw new Error('認証されていません');
  }
  
  // 既存の「役に立った」を確認
  const { data: existingUseful } = await supabase
    .from('usefuls')
    .select('id')
    .eq('evaluation_id', evaluationId)
    .eq('uid', user.id)
    .maybeSingle();
  
  if (existingUseful) {
    // 既に「役に立った」を押している場合は削除
    const { error } = await supabase
      .from('usefuls')
      .delete()
      .eq('id', existingUseful.id);
    
    if (error) {
      throw new Error(error.message);
    }
    
    return { added: false, evaluationId };
  } else {
    // 「役に立った」を追加
    const { error } = await supabase
      .from('usefuls')
      .insert({
        evaluation_id: evaluationId,
        uid: user.id,
        created_at: new Date().toISOString(),
      });
    
    if (error) {
      throw new Error(error.message);
    }
    
    return { added: true, evaluationId };
  }
};

// 役に立ったボタンを押す/取り消すアクション
export async function toggleUsefulAction(formData: FormData) {
  'use server';
  
  try {
    const evaluationId = parseInt(formData.get('evaluation_id') as string);
    
    if (isNaN(evaluationId)) {
      throw new Error('評価IDが不正です');
    }
    
    const result = await toggleUseful(evaluationId);
    
    return { success: true, ...result };
  } catch (error) {
    console.error('役に立ったの操作中にエラーが発生しました', error);
    return { success: false };
  }
}

// 通報を取得する
export const getReportByEvaluationId = async (evaluationId: number) => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    return null;
  }
  
  const { data, error } = await supabase
    .from('reports')
    .select('*')
    .eq('evaluation_id', evaluationId)
    .eq('reporter', user.id)
    .maybeSingle();
  
  if (error || !data) {
    return null;
  }
  
  return data;
};

// 通報を投稿または更新する
export const submitReport = async (report: {
  id?: number;
  evaluation_id: number;
  is_irrelevant: boolean;
  is_inappropriate: boolean;
  is_fake: boolean;
  is_other: boolean;
  comment: string;
}) => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    throw new Error('認証されていません');
  }
  
  // 通報データを準備
  const reportData = {
    evaluation_id: report.evaluation_id,
    reporter: user.id,
    is_irrelevant: report.is_irrelevant,
    is_inappropriate: report.is_inappropriate,
    is_fake: report.is_fake,
    is_other: report.is_other,
    comment: report.comment,
  };
  
  let result;
  
  // 既存の通報がある場合は更新、なければ新規作成
  if (report.id) {
    // 更新
    result = await supabase
      .from('reports')
      .update(reportData)
      .eq('id', report.id)
      .eq('reporter', user.id); // 自分の通報のみ更新可能
  } else {
    // 新規作成
    result = await supabase
      .from('reports')
      .insert({
        ...reportData,
        created_at: new Date().toISOString(),
      });
  }
  
  if (result.error) {
    throw new Error(result.error.message);
  }
  
  return result.data;
};

// 通報を削除する
export const deleteReport = async (id: number) => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    throw new Error('認証されていません');
  }
  
  // 通報を削除
  const { error } = await supabase
    .from('reports')
    .delete()
    .eq('id', id)
    .eq('reporter', user.id); // 自分の通報のみ削除可能
  
  if (error) {
    throw new Error(error.message);
  }
  
  return true;
};

// フォームアクション: 通報を投稿または更新する
export async function submitReportAction(formData: FormData) {
  'use server';
  
  try {
    const evaluationId = parseInt(formData.get('evaluation_id') as string);
    const id = formData.get('id') ? parseInt(formData.get('id') as string) : undefined;
    const isIrrelevant = formData.get('is_irrelevant') === 'true';
    const isInappropriate = formData.get('is_inappropriate') === 'true';
    const isFake = formData.get('is_fake') === 'true';
    const isOther = formData.get('is_other') === 'true';
    const comment = formData.get('comment') as string || '';
    
    if (isNaN(evaluationId)) {
      throw new Error('評価IDが不正です');
    }
    
    // 少なくとも1つの理由が選択されているか確認
    if (!isIrrelevant && !isInappropriate && !isFake && !isOther) {
      throw new Error('通報理由を選択してください');
    }
    
    await submitReport({
      id,
      evaluation_id: evaluationId,
      is_irrelevant: isIrrelevant,
      is_inappropriate: isInappropriate,
      is_fake: isFake,
      is_other: isOther,
      comment,
    });
    
    return { success: true, evaluationId };
  } catch (error) {
    console.error('通報の送信中にエラーが発生しました', error);
    return { 
      success: false, 
      error: error instanceof Error ? error.message : '通報の送信中にエラーが発生しました' 
    };
  }
}

// フォームアクション: 通報を削除する
export async function deleteReportAction(formData: FormData) {
  'use server';
  
  try {
    const id = parseInt(formData.get('id') as string);
    const evaluationId = parseInt(formData.get('evaluation_id') as string);
    
    if (isNaN(id) || isNaN(evaluationId)) {
      throw new Error('通報IDまたは評価IDが不正です');
    }
    
    await deleteReport(id);
    
    return { success: true, evaluationId };
  } catch (error) {
    console.error('通報の削除中にエラーが発生しました', error);
    return { success: false };
  }
}

// 評価の非表示状態を確認する
export const checkEvaluationInvisible = async (code: string, evaluatorId: string) => {
  const supabase = await createClient();
  
  // 'current'が指定された場合は現在のユーザーIDを使用
  let actualEvaluatorId = evaluatorId;
  
  if (evaluatorId === 'current') {
    const { data: { user } } = await supabase.auth.getUser();
    if (!user) {
      return false;
    }
    actualEvaluatorId = user.id;
  }
  
  const { data, error } = await supabase
    .from('invisible_evaluations')
    .select('*')
    .eq('code', code)
    .eq('evaluator', actualEvaluatorId)
    .maybeSingle();
  
  if (error) {
    return false;
  }
  
  return !!data;
};

// 評価の非表示/表示を切り替える
export const toggleEvaluationVisibility = async (code: string, evaluatorId: string) => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    throw new Error('認証されていません');
  }
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();
  
  if (!isAdmin) {
    throw new Error('管理者権限がありません');
  }
  
  // 現在の非表示状態を確認
  const isInvisible = await checkEvaluationInvisible(code, evaluatorId);
  
  if (isInvisible) {
    // 非表示状態を解除
    const { error } = await supabase
      .from('invisible_evaluations')
      .delete()
      .eq('code', code)
      .eq('evaluator', evaluatorId);
    
    if (error) {
      throw new Error(error.message);
    }
    
    return { isInvisible: false, code, evaluatorId };
  } else {
    // 非表示状態にする
    const { error } = await supabase
      .from('invisible_evaluations')
      .insert({
        code,
        evaluator: evaluatorId,
        updated_by: user.id,
        updated_at: new Date().toISOString(),
      });
    
    if (error) {
      throw new Error(error.message);
    }
    
    return { isInvisible: true, code, evaluatorId };
  }
};

// フォームアクション: 評価の非表示/表示を切り替える
export async function toggleEvaluationVisibilityAction(formData: FormData) {
  'use server';
  
  try {
    const code = formData.get('code') as string;
    const evaluatorId = formData.get('evaluator_id') as string;
    
    if (!code || !evaluatorId) {
      throw new Error('科目コードまたは評価者IDが不正です');
    }
    
    const result = await toggleEvaluationVisibility(code, evaluatorId);
    
    return { success: true, ...result };
  } catch (error) {
    console.error('評価の非表示/表示の切り替え中にエラーが発生しました', error);
    return { 
      success: false, 
      error: error instanceof Error ? error.message : '評価の非表示/表示の切り替え中にエラーが発生しました' 
    };
  }
}

// 最近の評価を取得する（ダッシュボード用）
export const getRecentEvaluations = async (limit = 5) => {
  const supabase = await createClient();
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();
  
  // 非表示評価のIDを取得
  const { data: invisibleEvals } = await supabase
    .from('invisible_evaluations')
    .select('code, evaluator');
  
  // 非表示評価のIDをセットに変換
  const invisibleSet = new Set<string>();
  if (invisibleEvals) {
    invisibleEvals.forEach(item => {
      const key = `${item.code}-${item.evaluator}`;
      invisibleSet.add(key);
    });
  }
  
  // 最近の評価を取得
  const { data: evaluations, error } = await supabase
    .from('evaluations')
    .select(`
      id,
      code,
      evaluator,
      evaluation,
      review,
      year,
      quarter,
      created_at,
      updated_at
    `)
    .order('updated_at', { ascending: false })
    .limit(limit);
  
  if (error || !evaluations) {
    return [];
  }
  
  // 管理者でない場合は非表示評価を除外
  let filteredEvaluations = evaluations;
  if (!isAdmin) {
    filteredEvaluations = evaluations.filter(evaluation => 
      !invisibleSet.has(`${evaluation.code}-${evaluation.evaluator}`)
    );
  }
  
  
  // 評価にダミーのユーザー情報と非表示状態を追加
  const evaluationsWithUsers = filteredEvaluations.map(evaluation => {
    const isInvisible = invisibleSet.has(`${evaluation.code}-${evaluation.evaluator}`);
    
    return {
      ...evaluation,
      users: {
        email: `user-${evaluation.evaluator.substring(0, 8)}@example.com`,
        raw_user_meta_data: {
          name: `ユーザー${evaluation.evaluator.substring(0, 4)}`
        }
      },
      is_invisible: isInvisible
    };
  });
  
  // 科目情報を取得
  const { data: subjects } = await supabase
    .from('subjects')
    .select('code, name, faculties');
  
  // 科目情報をマッピング
  const subjectMap: Record<string, { name: string; faculties: any }> = {};
  if (subjects) {
    subjects.forEach(subject => {
      subjectMap[subject.code] = {
        name: subject.name,
        faculties: subject.faculties
      };
    });
  }
  
  // 役に立った数を取得
  const { data: usefuls } = await supabase
    .from('usefuls')
    .select('evaluation_id')
    .in('evaluation_id', evaluationsWithUsers.map(e => e.id));
  
  // 役に立った数をマッピング
  const usefulCounts: Record<number, number> = {};
  if (usefuls) {
    // 各評価IDごとに役に立った数をカウント
    usefuls.forEach((item: { evaluation_id: number }) => {
      if (!usefulCounts[item.evaluation_id]) {
        usefulCounts[item.evaluation_id] = 0;
      }
      usefulCounts[item.evaluation_id]++;
    });
  }
  
  // 評価に役に立った数と科目情報を追加
  const evaluationsWithDetails = evaluationsWithUsers.map(evaluation => {
    const subject = subjectMap[evaluation.code] || { name: '不明', faculties: [] };
    
    return {
      ...evaluation,
      subject_name: subject.name,
      faculties: subject.faculties,
      useful_count: usefulCounts[evaluation.id] || 0
    };
  });
  
  return evaluationsWithDetails;
};

// 科目コードに基づいて通報一覧を取得する
export const getReportsBySubjectCode = async (code: string) => {
  const supabase = await createClient();
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();
  
  if (!isAdmin) {
    return [];
  }
  
  // 科目の評価IDを取得
  const { data: evaluations } = await supabase
    .from('evaluations')
    .select('id, evaluator')
    .eq('code', code);
  
  if (!evaluations || evaluations.length === 0) {
    return [];
  }
  
  const evaluationIds = evaluations.map(e => e.id);
  
  // 通報一覧を取得
  const { data: reports, error } = await supabase
    .from('reports')
    .select(`
      id,
      evaluation_id,
      reporter,
      is_irrelevant,
      is_inappropriate,
      is_fake,
      is_other,
      comment,
      created_at,
      evaluations:evaluation_id(id, evaluator)
    `)
    .in('evaluation_id', evaluationIds)
    .order('created_at', { ascending: false });
  
  if (error || !reports) {
    return [];
  }
  
  // 通報にダミーのユーザー情報を追加
  const reportsWithUsers = reports.map(report => {
    // evaluationsは外部キー参照で取得したオブジェクト
    const evaluation = report.evaluations as unknown as { id: number; evaluator: string };
    
    return {
      ...report,
      reporter_name: `通報者${report.reporter.substring(0, 4)}`,
      evaluator_name: evaluation ? `ユーザー${evaluation.evaluator.substring(0, 4)}` : '不明',
      evaluations: evaluation || { id: 0, evaluator: '' }
    };
  });
  
  return reportsWithUsers;
};

// ユーザーの評価一覧を取得する
export const getUserEvaluations = async () => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    return [];
  }
  
  // ユーザーの評価を取得
  const { data: evaluations, error } = await supabase
    .from('evaluations')
    .select(`
      id,
      code,
      evaluator,
      evaluation,
      review,
      year,
      quarter,
      created_at,
      updated_at
    `)
    .eq('evaluator', user.id)
    .order('updated_at', { ascending: false });
  
  if (error || !evaluations) {
    return [];
  }
  
  // 評価にダミーのユーザー情報と非表示状態を追加
  const evaluationsWithUsers = evaluations.map(evaluation => {
    return {
      ...evaluation,
      users: {
        email: `user-${evaluation.evaluator.substring(0, 8)}@example.com`,
        raw_user_meta_data: {
          name: `ユーザー${evaluation.evaluator.substring(0, 4)}`
        }
      }
    };
  });
  
  // 科目情報を取得
  const { data: subjects } = await supabase
    .from('subjects')
    .select('code, name, faculties');
  
  // 科目情報をマッピング
  const subjectMap: Record<string, { name: string; faculties: any }> = {};
  if (subjects) {
    subjects.forEach(subject => {
      subjectMap[subject.code] = {
        name: subject.name,
        faculties: subject.faculties
      };
    });
  }
  
  // 役に立った数を取得
  const { data: usefuls } = await supabase
    .from('usefuls')
    .select('evaluation_id')
    .in('evaluation_id', evaluationsWithUsers.map(e => e.id));
  
  // 役に立った数をマッピング
  const usefulCounts: Record<number, number> = {};
  if (usefuls) {
    // 各評価IDごとに役に立った数をカウント
    usefuls.forEach((item: { evaluation_id: number }) => {
      if (!usefulCounts[item.evaluation_id]) {
        usefulCounts[item.evaluation_id] = 0;
      }
      usefulCounts[item.evaluation_id]++;
    });
  }
  
  // 評価に役に立った数と科目情報を追加
  const evaluationsWithDetails = evaluationsWithUsers.map(evaluation => {
    const subject = subjectMap[evaluation.code] || { name: '不明', faculties: [] };
    
    return {
      ...evaluation,
      subject_name: subject.name,
      faculties: subject.faculties,
      useful_count: usefulCounts[evaluation.id] || 0
    };
  });
  
  return evaluationsWithDetails;
};

// ユーザーの通報一覧を取得する
export const getUserReports = async () => {
  const supabase = await createClient();
  
  const {
    data: { user },
  } = await supabase.auth.getUser();
  
  if (!user) {
    return [];
  }
  
  // ユーザーの通報を取得
  const { data: reports, error } = await supabase
    .from('reports')
    .select(`
      id,
      evaluation_id,
      reporter,
      is_irrelevant,
      is_inappropriate,
      is_fake,
      is_other,
      comment,
      created_at,
      evaluations:evaluation_id(id, evaluator, code, evaluation, review, year, quarter, created_at)
    `)
    .eq('reporter', user.id)
    .order('created_at', { ascending: false });
  
  if (error || !reports) {
    return [];
  }
  
  // 評価IDの一覧を取得
  const evaluationIds = reports.map(report => report.evaluation_id);
  
  // 役に立った数を取得
  const { data: usefuls } = await supabase
    .from('usefuls')
    .select('evaluation_id')
    .in('evaluation_id', evaluationIds);
  
  // 役に立った数をマッピング
  const usefulCounts: Record<number, number> = {};
  if (usefuls) {
    usefuls.forEach((item: { evaluation_id: number }) => {
      if (!usefulCounts[item.evaluation_id]) {
        usefulCounts[item.evaluation_id] = 0;
      }
      usefulCounts[item.evaluation_id]++;
    });
  }
  
  // 科目コードの一覧を取得
  const subjectCodes = new Set<string>();
  reports.forEach(report => {
    const evaluation = report.evaluations as unknown as { code: string };
    if (evaluation && evaluation.code) {
      subjectCodes.add(evaluation.code);
    }
  });
  
  // 科目情報を取得
  const { data: subjects } = await supabase
    .from('subjects')
    .select('code, name, faculties')
    .in('code', Array.from(subjectCodes));
  
  // 科目情報をマッピング
  const subjectMap: Record<string, { name: string; faculties: any }> = {};
  if (subjects) {
    subjects.forEach(subject => {
      subjectMap[subject.code] = {
        name: subject.name,
        faculties: subject.faculties
      };
    });
  }
  
  // 通報に詳細情報を追加
  const reportsWithDetails = reports.map(report => {
    // evaluationsは外部キー参照で取得したオブジェクト
    const evaluation = report.evaluations as unknown as { 
      id: number; 
      evaluator: string; 
      code: string;
      evaluation: number;
      review: string;
      year: number;
      quarter: string;
      created_at: string;
    };
    
    const subject = evaluation && evaluation.code ? subjectMap[evaluation.code] : { name: '不明', faculties: [] };
    
    return {
      ...report,
      reporter_name: `通報者${report.reporter.substring(0, 4)}`,
      reporter_id: report.reporter,
      evaluator_name: evaluation ? `ユーザー${evaluation.evaluator.substring(0, 4)}` : '不明',
      evaluator_id: evaluation ? evaluation.evaluator : '',
      subject_name: subject ? subject.name : '不明',
      faculties: subject ? subject.faculties : [],
      evaluation: evaluation ? evaluation.evaluation : 0,
      review: evaluation ? evaluation.review : '',
      year: evaluation ? evaluation.year : 0,
      quarter: evaluation ? evaluation.quarter : '',
      evaluation_created_at: evaluation ? evaluation.created_at : '',
      useful_count: usefulCounts[report.evaluation_id] || 0,
      code: evaluation ? evaluation.code : '' // 科目コードを追加
    };
  });
  
  return reportsWithDetails;
};

// 最近の通報を取得する（ダッシュボード用）
export const getRecentReports = async (limit = 5) => {
  const supabase = await createClient();
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();
  
  if (!isAdmin) {
    return [];
  }
  
  // 最近の通報を取得
  const { data: reports, error } = await supabase
    .from('reports')
    .select(`
      id,
      evaluation_id,
      reporter,
      is_irrelevant,
      is_inappropriate,
      is_fake,
      is_other,
      comment,
      created_at,
      evaluations:evaluation_id(id, evaluator, code, evaluation, review, year, quarter, created_at)
    `)
    .order('created_at', { ascending: false })
    .limit(limit);
  
  if (error || !reports) {
    return [];
  }
  
  // 評価IDの一覧を取得
  const evaluationIds = reports.map(report => report.evaluation_id);
  
  // 役に立った数を取得
  const { data: usefuls } = await supabase
    .from('usefuls')
    .select('evaluation_id')
    .in('evaluation_id', evaluationIds);
  
  // 役に立った数をマッピング
  const usefulCounts: Record<number, number> = {};
  if (usefuls) {
    usefuls.forEach((item: { evaluation_id: number }) => {
      if (!usefulCounts[item.evaluation_id]) {
        usefulCounts[item.evaluation_id] = 0;
      }
      usefulCounts[item.evaluation_id]++;
    });
  }
  
  // 科目コードの一覧を取得
  const subjectCodes = new Set<string>();
  reports.forEach(report => {
    const evaluation = report.evaluations as unknown as { code: string };
    if (evaluation && evaluation.code) {
      subjectCodes.add(evaluation.code);
    }
  });
  
  // 科目情報を取得
  const { data: subjects } = await supabase
    .from('subjects')
    .select('code, name, faculties')
    .in('code', Array.from(subjectCodes));
  
  // 科目情報をマッピング
  const subjectMap: Record<string, { name: string; faculties: any }> = {};
  if (subjects) {
    subjects.forEach(subject => {
      subjectMap[subject.code] = {
        name: subject.name,
        faculties: subject.faculties
      };
    });
  }
  
  // 通報に詳細情報を追加
  const reportsWithDetails = reports.map(report => {
    // evaluationsは外部キー参照で取得したオブジェクト
    const evaluation = report.evaluations as unknown as { 
      id: number; 
      evaluator: string; 
      code: string;
      evaluation: number;
      review: string;
      year: number;
      quarter: string;
      created_at: string;
    };
    
    const subject = evaluation && evaluation.code ? subjectMap[evaluation.code] : { name: '不明', faculties: [] };
    
    return {
      ...report,
      reporter_name: `通報者${report.reporter.substring(0, 4)}`,
      reporter_id: report.reporter,
      evaluator_name: evaluation ? `ユーザー${evaluation.evaluator.substring(0, 4)}` : '不明',
      evaluator_id: evaluation ? evaluation.evaluator : '',
      subject_name: subject ? subject.name : '不明',
      faculties: subject ? subject.faculties : [],
      evaluation: evaluation ? evaluation.evaluation : 0,
      review: evaluation ? evaluation.review : '',
      year: evaluation ? evaluation.year : 0,
      quarter: evaluation ? evaluation.quarter : '',
      evaluation_created_at: evaluation ? evaluation.created_at : '',
      useful_count: usefulCounts[report.evaluation_id] || 0,
      code: evaluation ? evaluation.code : '' // 科目コードを追加
    };
  });
  
  return reportsWithDetails;
};
