import { FormMessage, Message } from '@/components/form-message';
import Link from 'next/link';
import { GoogleAuthButton } from '@/components/google-auth-button';
import { checkBannedUser } from '@/app/check-banned';
import { redirect } from 'next/navigation';

export default async function Login(props: { searchParams: Promise<Message> }) {
  const searchParams = await props.searchParams;

  // BANされたユーザーをチェック
  const bannedCheck = await checkBannedUser();

  // BANされたユーザーの場合、トップページにリダイレクト
  if (bannedCheck && bannedCheck.banned) {
    const errorMessage = bannedCheck.message || 'アカウントがBANされています';
    redirect(`/?error=${encodeURIComponent(errorMessage)}`);
  }

  return (
    <form className="flex-1 flex flex-col min-w-64">
      <h1 className="text-2xl font-medium">ログイン</h1>
      <p className="text-sm text-foreground">
        アカウントをお持ちでない方は{' '}
        <Link className="text-foreground font-medium underline" href="/sign-up">
          アカウント登録
        </Link>
      </p>
      <div className="flex flex-col gap-2 mt-8">
        <GoogleAuthButton />
        <FormMessage message={searchParams} />
        <div className="mt-4 text-sm text-gray-500 bg-gray-100 p-3 rounded-md">
          <p className="font-medium text-amber-600">注意:</p>
          <p>ZEN大学のzen.ac.jpまたはstudent.zen.ac.jpドメインのGoogleアカウントのみが利用できます。</p>
          <p>その他のドメインのアカウントではサインインできません。</p>
        </div>
        <div className="mt-4 text-xs text-gray-500">
          <p>
            ログインすることで、
            <Link href="/tos" className="text-primary hover:underline">利用規約</Link>、
            <Link href="/privacy-policy" className="text-primary hover:underline">プライバシーポリシー</Link>、
            <Link href="/community-guideline" className="text-primary hover:underline">コミュニティガイドライン</Link>
            に同意したものとみなします。
          </p>
        </div>
      </div>
    </form>
  );
}
