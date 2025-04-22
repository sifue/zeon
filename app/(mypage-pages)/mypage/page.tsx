import { getUserEvaluations, getUserReports, checkIsAdmin } from '@/app/actions';
import { UserEvaluations } from '@/components/user-evaluations';
import { UserReports } from '@/components/user-reports';
import { createClient } from '@/utils/supabase/server';
import { redirect } from 'next/navigation';
import { checkBannedUser } from '@/app/check-banned';
import Link from 'next/link';
import { ArrowLeft } from 'lucide-react';

export default async function MyPage() {
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
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();
  
  // ユーザーの評価を取得
  const userEvaluations = await getUserEvaluations();
  
  // ユーザーの通報を取得
  const userReports = await getUserReports();

  return (
    <div className="flex-1 w-full flex flex-col gap-4 pt-2 pb-4 px-2 sm:px-4 md:pt-3 md:pb-8 md:px-8">
      {/* 戻るリンク */}
      <Link 
        href="/dashboard" 
        className="flex items-center text-blue-600 hover:text-blue-800"
      >
        <ArrowLeft size={16} className="mr-1" />
        ダッシュボードに戻る
      </Link>
      
      <div className="flex flex-col gap-2">
        <h1 className="text-3xl font-bold">マイページ</h1>
      </div>
      
      <div className="flex flex-col gap-6">
        <h2 className="text-2xl font-semibold">あなたの評価一覧</h2>
        <div className="overflow-hidden rounded-lg border p-4">
          <UserEvaluations evaluations={userEvaluations} isAdmin={isAdmin} />
        </div>
      </div>
      
      <div className="flex flex-col gap-6">
        <h2 className="text-2xl font-semibold">あなたの通報一覧</h2>
        <div className="overflow-hidden rounded-lg border p-4">
          <UserReports reports={userReports} />
        </div>
      </div>
    </div>
  );
}
