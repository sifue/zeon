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
export const getSubjects = async () => {
  const supabase = await createClient();
  
  // 科目を想定年次順 > 科目コード順に並び替えて取得
  const { data: subjects, error } = await supabase
    .from('subjects')
    .select('*')
    .order('enrollment_grade', { ascending: true })
    .order('code', { ascending: true });
  
  if (error) {
    return [];
  }
  
  return subjects;
};

// 科目の評価データを取得する
export const getSubjectEvaluations = async () => {
  const supabase = await createClient();
  
  // 科目ごとの評価数と平均評価を取得
  const { data, error } = await supabase
    .from('evaluations')
    .select(`
      code,
      evaluation
    `);
  
  if (error) {
    return {};
  }
  
  // 科目ごとに評価数と平均評価を計算
  const evaluationStats: Record<string, { count: number; average: number }> = {};
  
  data.forEach((evaluation) => {
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
  
  // 非表示評価のIDを取得
  const { data: invisibleEvals } = await supabase
    .from('invisible_evaluations')
    .select('code, evaluator');
  
  // 非表示評価のIDをセットに変換
  const invisibleSet = new Set<string>();
  if (invisibleEvals) {
    invisibleEvals.forEach(item => {
      invisibleSet.add(`${item.code}-${item.evaluator}`);
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
    .order('created_at', { ascending: false });
  
  if (error || !evaluations) {
    return [];
  }
  
  // 非表示評価を除外
  const visibleEvaluations = evaluations.filter(evaluation => 
    !invisibleSet.has(`${evaluation.code}-${evaluation.evaluator}`)
  );
  
  // 役に立った数を取得
  const { data: usefuls } = await supabase
    .from('usefuls')
    .select('evaluation_id')
    .in('evaluation_id', visibleEvaluations.map(e => e.id));
  
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
  type Evaluation = typeof visibleEvaluations[0];
  const evaluationsWithUsefuls = visibleEvaluations.map((evaluation: Evaluation) => ({
    ...evaluation,
    useful_count: usefulCounts[evaluation.id] || 0
  }));
  
  return evaluationsWithUsefuls;
};

// 特定の科目の評価統計を取得する
export const getEvaluationStatsByCode = async (code: string) => {
  const supabase = await createClient();
  
  const { data, error } = await supabase
    .from('evaluations')
    .select('evaluation')
    .eq('code', code);
  
  if (error || !data || data.length === 0) {
    return { count: 0, average: 0 };
  }
  
  const count = data.length;
  const sum = data.reduce((acc, curr) => acc + curr.evaluation, 0);
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
