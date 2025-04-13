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
        <div className="flex gap-4 items-center">
          <div>
            <Badge variant={'default'} className="font-normal pointer-events-none">
              .env.localファイルにanon keyとURLを設定してください
            </Badge>
          </div>
          <div className="flex gap-2">
            <Button
              asChild
              size="sm"
              variant={'outline'}
              disabled
              className="opacity-75 cursor-none pointer-events-none"
            >
              <Link href="/sign-in">ログイン</Link>
            </Button>
            <Button
              asChild
              size="sm"
              variant={'default'}
              disabled
              className="opacity-75 cursor-none pointer-events-none"
            >
              <Link href="/sign-up">アカウント登録</Link>
            </Button>
          </div>
        </div>
      </>
    );
  }
  return user ? (
    <div className="flex items-center gap-4">
      こんにちは、{user.email}さん！
      <form action={signOutAction}>
        <Button type="submit" variant={'outline'}>
          ログアウト
        </Button>
      </form>
    </div>
  ) : (
    <div className="flex gap-2">
      <Button asChild size="sm" variant={'outline'}>
        <Link href="/sign-in">ログイン</Link>
      </Button>
      <Button asChild size="sm" variant={'default'}>
        <Link href="/sign-up">アカウント登録</Link>
      </Button>
    </div>
  );
}
