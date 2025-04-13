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
