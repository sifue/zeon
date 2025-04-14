'use server';

import { createClient } from '@/utils/supabase/server';
import { redirect } from 'next/navigation';

// BANされたユーザーをチェックして、BANされている場合はログアウトさせる
export const checkBannedUser = async () => {
  const supabase = await createClient();

  // 現在のユーザーを取得
  const {
    data: { user },
    error: userError,
  } = await supabase.auth.getUser();

  if (userError || !user) {
    // ユーザーが取得できない場合は何もしない
    return null;
  }

  try {
    // banned_usersテーブルをチェック
    const { data: bannedUser, error } = await supabase
      .from('banned_users')
      .select('*')
      .eq('uid', user.id)
      .maybeSingle();

    // BANされたユーザーの場合、自動的にログアウト
    if (bannedUser) {

      // ログアウト処理
      await supabase.auth.signOut();

      // トップページにリダイレクト（エラーメッセージ付き）
      return {
        banned: true,
        message:
          'アカウントがBANされています。ZEN大学のzen.ac.jpまたはstudent.zen.ac.jpドメインのGoogleアカウントのみが利用できます。',
      };
    }

    return { banned: false };
  } catch (err) {
    return { banned: false };
  }
};
