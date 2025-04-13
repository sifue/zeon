import { createServerClient } from "@supabase/ssr";
import { type NextRequest, NextResponse } from "next/server";

export const updateSession = async (request: NextRequest) => {
  try {
    // Create an unmodified response
    let response = NextResponse.next({
      request: {
        headers: request.headers,
      },
    });

    const supabase = createServerClient(
      process.env.NEXT_PUBLIC_SUPABASE_URL!,
      process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY!,
      {
        cookies: {
          getAll() {
            return request.cookies.getAll();
          },
          setAll(cookiesToSet) {
            cookiesToSet.forEach(({ name, value }) =>
              request.cookies.set(name, value),
            );
            response = NextResponse.next({
              request,
            });
            cookiesToSet.forEach(({ name, value, options }) =>
              response.cookies.set(name, value, options),
            );
          },
        },
      },
    );

    // This will refresh session if expired - required for Server Components
    // https://supabase.com/docs/guides/auth/server-side/nextjs
    const user = await supabase.auth.getUser();

    // ユーザーがログインしている場合、BANされているかチェック
    if (!user.error && user.data.user) {
      try {
        // .single()ではなく.maybeSingle()を使用してエラーを回避
        const { data: bannedUser, error } = await supabase
          .from('banned_users')
          .select('*')
          .eq('uid', user.data.user.id)
          .maybeSingle();

        console.log('Checking banned status for user:', user.data.user.id);
        console.log('Banned user data:', bannedUser);
        console.log('Error:', error);

        // BANされたユーザーの場合、自動的にログアウトしてトップページにリダイレクト
        if (bannedUser) {
          console.log('User is banned, signing out');
          
          // ログアウト処理
          const { error: signOutError } = await supabase.auth.signOut();
          console.log('Sign out error:', signOutError);
          
          // トップページにリダイレクト（エラーメッセージ付き）
          const redirectUrl = new URL('/', request.url);
          redirectUrl.searchParams.set('error', 'アカウントがBANされています。ZEN大学のzen.ac.jpドメインのGoogleアカウントのみが利用できます。');
          
          return NextResponse.redirect(redirectUrl);
        }
      } catch (err) {
        console.error('Error checking banned status:', err);
      }
    }

    // protected routes
    if (request.nextUrl.pathname.startsWith("/protected") && user.error) {
      return NextResponse.redirect(new URL("/sign-in", request.url));
    }

    if (request.nextUrl.pathname === "/" && !user.error) {
      return NextResponse.redirect(new URL("/protected", request.url));
    }

    return response;
  } catch (e) {
    // If you are here, a Supabase client could not be created!
    // This is likely because you have not set up environment variables.
    return NextResponse.next({
      request: {
        headers: request.headers,
      },
    });
  }
};
