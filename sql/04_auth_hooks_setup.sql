-- ZEONデータベース構築スクリプト
-- 04_auth_hooks_setup.sql
-- Auth Hooks設定用のSQL

-- Auth Hooks用の関数を作成
-- この関数は、ユーザーがサインアップした際に実行され、zen.ac.jpドメイン以外のユーザーをBANします

-- 1. Auth Hooks用の関数を作成
CREATE OR REPLACE FUNCTION auth.on_auth_user_created()
RETURNS trigger AS $$
BEGIN
  -- ユーザーのメールアドレスがzen.ac.jpまたはstudent.zen.ac.jpドメインでない場合
  IF NEW.email IS NOT NULL AND NEW.email NOT LIKE '%@zen.ac.jp' AND NEW.email NOT LIKE '%@student.zen.ac.jp' THEN
    -- BANリストに追加
    INSERT INTO public.banned_users (uid)
    VALUES (NEW.id)
    ON CONFLICT (uid) DO NOTHING;
    
    -- ログ出力（デバッグ用）
    RAISE LOG 'User % with email % has been banned because it is not a zen.ac.jp domain', NEW.id, NEW.email;
  ELSE
    -- zen.ac.jpまたはstudent.zen.ac.jpドメインの場合は何もしない
    RAISE LOG 'User % with email % is allowed (zen.ac.jp or student.zen.ac.jp domain)', NEW.id, NEW.email;
  END IF;
  
  RETURN NEW;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- 2. トリガーを作成
DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
  AFTER INSERT ON auth.users
  FOR EACH ROW EXECUTE FUNCTION auth.on_auth_user_created();

-- 3. 既存のユーザーに対して処理を実行
DO $$
DECLARE
  user_record RECORD;
BEGIN
  -- banned_usersテーブルに登録されていないzen.ac.jpまたはstudent.zen.ac.jp以外のドメインのユーザーを検索
  FOR user_record IN 
    SELECT u.id, u.email 
    FROM auth.users u
    LEFT JOIN public.banned_users b ON u.id = b.uid
    WHERE u.email NOT LIKE '%@zen.ac.jp' AND u.email NOT LIKE '%@student.zen.ac.jp' AND b.uid IS NULL
  LOOP
    -- BANリストに追加
    INSERT INTO public.banned_users (uid)
    VALUES (user_record.id)
    ON CONFLICT (uid) DO NOTHING;
    
    -- ログ出力（デバッグ用）
    RAISE LOG 'Existing user % with email % has been banned (retroactive check)', user_record.id, user_record.email;
  END LOOP;
END;
$$;

-- 4. banned_usersテーブルの内容を確認
SELECT * FROM public.banned_users;

-- 5. auth.usersテーブルの内容を確認（メールアドレスとbanned_usersテーブルとの関連を確認）
SELECT 
  u.id, 
  u.email, 
  CASE WHEN b.uid IS NOT NULL THEN 'BANNED' ELSE 'NOT BANNED' END AS status
FROM 
  auth.users u
LEFT JOIN 
  public.banned_users b ON u.id = b.uid
ORDER BY 
  u.created_at DESC;
