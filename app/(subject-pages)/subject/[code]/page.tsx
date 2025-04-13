import { getSubjectByCode, getEvaluationsBySubjectCode, getEvaluationStatsByCode, checkIsAdmin } from '@/app/actions';
import { SubjectDetail } from '@/components/subject-detail';
import { EvaluationList } from '@/components/evaluation-list';
import { createClient } from '@/utils/supabase/server';
import { redirect } from 'next/navigation';
import { checkBannedUser } from '@/app/check-banned';
import Link from 'next/link';
import { ArrowLeft } from 'lucide-react';

// ページのパラメータの型定義
interface SubjectPageParams {
  params: {
    code: string;
  };
}

export default async function SubjectPage({ params }: SubjectPageParams) {
  // Next.js 15.3.0では、paramsを使用する前にawaitする必要があります
  const resolvedParams = await params;
  const { code } = resolvedParams;
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

  // 科目の詳細情報を取得
  const subject = await getSubjectByCode(code);
  
  if (!subject) {
    // 科目が見つからない場合はダッシュボードにリダイレクト
    return redirect('/dashboard?error=科目が見つかりませんでした');
  }
  
  // 評価統計を取得
  const stats = await getEvaluationStatsByCode(code);
  
  // 評価一覧を取得
  const evaluations = await getEvaluationsBySubjectCode(code);
  
  // 管理者かどうかをチェック
  const isAdmin = await checkIsAdmin();

  return (
    <div className="flex-1 w-full flex flex-col gap-6 p-4 md:p-8">
      {/* 戻るリンク */}
      <Link 
        href="/dashboard" 
        className="flex items-center text-blue-600 hover:text-blue-800 mb-2"
      >
        <ArrowLeft size={16} className="mr-1" />
        ダッシュボードに戻る
      </Link>
      
      <div className="flex flex-col gap-4">
        <h1 className="text-3xl font-bold">科目詳細</h1>
        
        {/* 科目詳細表示コンポーネント */}
        <SubjectDetail subject={subject} stats={stats} />
        
        {/* レビュー一覧セクション */}
        <div className="mt-6">
          <h2 className="text-2xl font-semibold mb-4">レビュー一覧</h2>
          <EvaluationList evaluations={evaluations} />
        </div>
      </div>
    </div>
  );
}
