import { signOutAction } from '@/app/actions';
import { hasEnvVars } from '@/utils/supabase/check-env-vars';
import Link from 'next/link';
import { Badge } from './ui/badge';
import { Button } from './ui/button';
import { createClient } from '@/utils/supabase/server';

export default async function AuthButton() {
  const supabase = await createClient();

  const {
    data: { user },
  } = await supabase.auth.getUser();

  if (!hasEnvVars) {
    return (
      <>
        <div className="flex flex-col sm:flex-row gap-4 items-center">
          <div>
            <Badge variant={'default'} className="font-normal pointer-events-none">
              .env.localファイルにanon keyとURLを設定してください
            </Badge>
          </div>
          <div className="flex flex-col sm:flex-row gap-2 w-full sm:w-auto">
            <Button
              asChild
              size="sm"
              variant={'outline'}
              disabled
              className="opacity-75 cursor-none pointer-events-none w-full sm:w-auto"
            >
              <Link href="/sign-in">ログイン</Link>
            </Button>
            <Button
              asChild
              size="sm"
              variant={'default'}
              disabled
              className="opacity-75 cursor-none pointer-events-none w-full sm:w-auto"
            >
              <Link href="/sign-up">アカウント登録</Link>
            </Button>
          </div>
        </div>
      </>
    );
  }
  return user ? (
    <div className="flex flex-col sm:flex-row items-center gap-4">
      <span className="text-sm">こんにちは、{user.email}さん！</span>
      <form action={signOutAction}>
        <Button type="submit" variant={'outline'} className="w-full sm:w-auto">
          ログアウト
        </Button>
      </form>
    </div>
  ) : (
    <div className="flex flex-col sm:flex-row gap-2">
      <Button asChild size="sm" variant={'outline'} className="w-full sm:w-auto">
        <Link href="/sign-in">ログイン</Link>
      </Button>
      <Button asChild size="sm" variant={'default'} className="w-full sm:w-auto">
        <Link href="/sign-up">アカウント登録</Link>
      </Button>
    </div>
  );
}
