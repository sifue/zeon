import { checkBannedUser } from '@/app/check-banned';
import { createClient } from '@/utils/supabase/server';
import { redirect } from 'next/navigation';

export default async function MypageLayout({
  children,
}: {
  children: React.ReactNode;
}) {
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

  return (
    <div className="flex-1 w-full flex flex-col gap-4 items-center">
      <div className="w-full max-w-4xl">
        {children}
      </div>
    </div>
  );
}
