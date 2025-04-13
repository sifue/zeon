import { FormMessage, Message } from '@/components/form-message';
import Link from 'next/link';
import { GoogleAuthButton } from '@/components/google-auth-button';
import { checkBannedUser } from '@/app/check-banned';
import { redirect } from 'next/navigation';

export default async function Signup(props: { searchParams: Promise<Message> }) {
  const searchParams = await props.searchParams;

  // BANされたユーザーをチェック
  const bannedCheck = await checkBannedUser();

  // BANされたユーザーの場合、トップページにリダイレクト
  if (bannedCheck && bannedCheck.banned) {
    const errorMessage = bannedCheck.message || 'アカウントがBANされています';
    redirect(`/?error=${encodeURIComponent(errorMessage)}`);
  }

  if ('message' in searchParams) {
    return (
      <div className="w-full flex-1 flex items-center h-screen sm:max-w-md justify-center gap-2 p-4">
        <FormMessage message={searchParams} />
      </div>
    );
  }

  return (
    <>
      <form className="flex flex-col min-w-64 max-w-64 mx-auto">
        <h1 className="text-2xl font-medium">Sign up</h1>
        <p className="text-sm text text-foreground">
          Already have an account?{' '}
          <Link className="text-primary font-medium underline" href="/sign-in">
            Sign in
          </Link>
        </p>
        <div className="flex flex-col gap-2 mt-8">
          <GoogleAuthButton />
          <FormMessage message={searchParams} />
          <div className="mt-4 text-sm text-gray-500 bg-gray-100 p-3 rounded-md">
            <p className="font-medium text-amber-600">注意:</p>
            <p>ZEN大学のzen.ac.jpドメインのGoogleアカウントのみが利用できます。</p>
            <p>その他のドメインのアカウントではサインインできません。</p>
          </div>
        </div>
      </form>
    </>
  );
}
