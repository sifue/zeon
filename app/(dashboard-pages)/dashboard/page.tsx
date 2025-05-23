import { getSubjects, getSubjectEvaluations, checkIsAdmin, getRecentEvaluations, getRecentReports } from '@/app/actions';
import { SubjectList } from '@/components/subject-list';
import { RecentEvaluations } from '@/components/recent-evaluations';
import { RecentReports } from '@/components/recent-reports';
import ServiceTerminationNotice from '@/components/service-termination-notice';
import { createClient } from '@/utils/supabase/server';
import { InfoIcon } from 'lucide-react';
import { redirect } from 'next/navigation';
import { checkBannedUser } from '@/app/check-banned';

export default async function DashboardPage() {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!user) {
    return redirect('/sign-in');
  }

  // BANされたユーザーをチェック
  const bannedCheck = await checkBannedUser();

  // BANされたユーザーの場合、トップページにリダイレクト
  if (bannedCheck && bannedCheck.banned) {
    const errorMessage = bannedCheck.message || 'アカウントがBANされています';
    redirect(`/?error=${encodeURIComponent(errorMessage)}`);
  }
  
  // 全ての年次の科目データを取得（パフォーマンス最適化のため、初期表示時は全て取得）
  // これにより、タブ切り替え時に追加のデータ取得が不要になります
  const [grade1Subjects, grade2Subjects, grade3Subjects, grade4Subjects] = await Promise.all([
    getSubjects(1),
    getSubjects(2),
    getSubjects(3),
    getSubjects(4)
  ]);
  
  // 科目データをまとめる
  const allSubjects = {
    grade1: grade1Subjects,
    grade2: grade2Subjects,
    grade3: grade3Subjects,
    grade4: grade4Subjects
  };
  
  // 評価データを取得
  const evaluationStats = await getSubjectEvaluations();
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();
  
  // 最近の評価を取得
  const recentEvaluations = await getRecentEvaluations(10);
  
  // 管理者の場合は最近の通報も取得
  const recentReports = isAdmin ? await getRecentReports(5) : [];

  return (
    <div className="flex-1 w-full flex flex-col gap-4 pt-2 pb-4 px-2 sm:px-4 md:pt-3 md:pb-8 md:px-8">
      <div className="flex flex-col gap-2">
        <h1 className="text-3xl font-bold">ダッシュボード</h1>
        
        <ServiceTerminationNotice />
        
        {isAdmin && (
          <div className="bg-yellow-100 text-sm p-3 px-5 rounded-md text-yellow-800 flex gap-3 items-center">
            <InfoIcon size="16" strokeWidth={2} />
            管理者向け: 最新の通報を確認してください
          </div>
        )}
      </div>
      
      {isAdmin && recentReports.length > 0 && (
        <div className="flex flex-col gap-6">
          <h2 className="text-2xl font-semibold">最近の通報 (最新5件)</h2>
          <div className="overflow-hidden rounded-lg border p-4 bg-red-50">
            <RecentReports reports={recentReports} />
          </div>
        </div>
      )}
      
      <div className="flex flex-col gap-6">
        <h2 className="text-2xl font-semibold">最近の評価 (最新10件)</h2>
        <div className="overflow-hidden rounded-lg border p-4">
          <RecentEvaluations evaluations={recentEvaluations} isAdmin={isAdmin} />
        </div>
      </div>
      
      <div className="flex flex-col gap-6">
        <h2 className="text-2xl font-semibold">科目一覧</h2>
        <div className="overflow-hidden rounded-lg border">
          <SubjectList 
            allSubjects={allSubjects}
            evaluationStats={evaluationStats} 
          />
        </div>
      </div>
    </div>
  );
}
