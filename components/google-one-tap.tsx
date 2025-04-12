'use client';

import { useEffect } from 'react';
import { createClient } from '@/utils/supabase/client';

export function GoogleOneTap() {
  useEffect(() => {
    // 開発環境ではGoogle One Tapを無効化
    if (process.env.NODE_ENV === 'development') {
      console.log('開発環境ではGoogle One Tapは無効化されています');
      return;
    }

    const handleCredentialResponse = async (response: google.CredentialResponse) => {
      try {
        const supabase = createClient();
        const { data, error } = await supabase.auth.signInWithIdToken({
          provider: 'google',
          token: response.credential,
        });

        if (error) {
          console.error('Google One Tap認証エラー:', error);
        } else if (data?.user) {
          window.location.href = '/protected';
        }
      } catch (error) {
        console.error('Google One Tap処理エラー:', error);
      }
    };

    // Google One Tapの初期化
    if (typeof window !== 'undefined' && window.google) {
      window.google.accounts.id.initialize({
        client_id: process.env.NEXT_PUBLIC_GOOGLE_CLIENT_ID!,
        callback: handleCredentialResponse,
        auto_select: true,
        cancel_on_tap_outside: false,
      });

      window.google.accounts.id.prompt();
    }

    return () => {
      if (typeof window !== 'undefined' && window.google) {
        window.google.accounts.id.cancel();
      }
    };
  }, []);

  return null;
}
