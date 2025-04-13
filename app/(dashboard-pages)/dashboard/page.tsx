import { getSubjects, getSubjectEvaluations, checkIsAdmin, getRecentEvaluations } from '@/app/actions';
import { SubjectList } from '@/components/subject-list';
import { RecentEvaluations } from '@/components/recent-evaluations';
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

  // 科目一覧を取得
  const subjects = await getSubjects();
  
  // 評価データを取得
  const evaluationStats = await getSubjectEvaluations();
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();
  
  // 最近の評価を取得
  const recentEvaluations = await getRecentEvaluations(10);

  return (
    <div className="flex-1 w-full flex flex-col gap-8 p-4 md:p-8">
      <div className="flex flex-col gap-4">
        <h1 className="text-3xl font-bold">ダッシュボード</h1>
        
        {isAdmin && (
          <div className="bg-yellow-100 text-sm p-3 px-5 rounded-md text-yellow-800 flex gap-3 items-center">
            <InfoIcon size="16" strokeWidth={2} />
            管理者向け: 最新の通報を確認してください
          </div>
        )}
      </div>
      
      <div className="flex flex-col gap-6">
        <h2 className="text-2xl font-semibold">最近の評価 (最新10件)</h2>
        <div className="overflow-hidden rounded-lg border p-4">
          <RecentEvaluations evaluations={recentEvaluations} isAdmin={isAdmin} />
        </div>
      </div>
      
      <div className="flex flex-col gap-6">
        <h2 className="text-2xl font-semibold">科目一覧</h2>
        <div className="overflow-hidden rounded-lg border">
          <SubjectList subjects={subjects} evaluationStats={evaluationStats} />
        </div>
      </div>
    </div>
  );
}
