-- ZEONデータベース構築スクリプト
-- 02_setup_rls_policies.sql
-- Row Level Security (RLS)ポリシーの設定

-- 管理者かどうかを判定する関数
CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM public.admins
    WHERE uid = auth.uid()
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- BANされたユーザーかどうかを判定する関数
CREATE OR REPLACE FUNCTION public.is_banned()
RETURNS BOOLEAN AS $$
BEGIN
  RETURN EXISTS (
    SELECT 1 FROM public.ban_users
    WHERE uid = auth.uid()
  );
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- 各テーブルのRLS有効化

-- 管理者テーブル
ALTER TABLE public.admins ENABLE ROW LEVEL SECURITY;

-- BANされたユーザーテーブル
ALTER TABLE public.ban_users ENABLE ROW LEVEL SECURITY;

-- 科目テーブル
ALTER TABLE public.subjects ENABLE ROW LEVEL SECURITY;

-- 評価テーブル
ALTER TABLE public.evaluations ENABLE ROW LEVEL SECURITY;

-- 非表示評価テーブル
ALTER TABLE public.invisible_evaluations ENABLE ROW LEVEL SECURITY;

-- 通報テーブル
ALTER TABLE public.reports ENABLE ROW LEVEL SECURITY;

-- 役に立ったテーブル
ALTER TABLE public.usefuls ENABLE ROW LEVEL SECURITY;

-- 各テーブルのRLSポリシー設定

-- 管理者テーブル
-- 管理者のみが閲覧・編集可能
CREATE POLICY admin_select ON public.admins
  FOR SELECT USING (public.is_admin());

CREATE POLICY admin_insert ON public.admins
  FOR INSERT WITH CHECK (public.is_admin());

CREATE POLICY admin_update ON public.admins
  FOR UPDATE USING (public.is_admin()) WITH CHECK (public.is_admin());

CREATE POLICY admin_delete ON public.admins
  FOR DELETE USING (public.is_admin());

-- BANされたユーザーテーブル
-- 管理者のみが閲覧・編集可能
CREATE POLICY ban_user_select ON public.ban_users
  FOR SELECT USING (public.is_admin());

CREATE POLICY ban_user_insert ON public.ban_users
  FOR INSERT WITH CHECK (public.is_admin());

CREATE POLICY ban_user_update ON public.ban_users
  FOR UPDATE USING (public.is_admin()) WITH CHECK (public.is_admin());

CREATE POLICY ban_user_delete ON public.ban_users
  FOR DELETE USING (public.is_admin());

-- 科目テーブル
-- 全ての認証ユーザーが閲覧可能
-- 編集は管理者のみ可能
CREATE POLICY subject_select ON public.subjects
  FOR SELECT USING (auth.role() = 'authenticated' AND NOT public.is_banned());

CREATE POLICY subject_insert ON public.subjects
  FOR INSERT WITH CHECK (public.is_admin());

CREATE POLICY subject_update ON public.subjects
  FOR UPDATE USING (public.is_admin()) WITH CHECK (public.is_admin());

CREATE POLICY subject_delete ON public.subjects
  FOR DELETE USING (public.is_admin());

-- 評価テーブル
-- 全ての認証ユーザーが閲覧可能
-- 投稿者自身のみが編集・削除可能
-- BANされたユーザーは閲覧・投稿不可
CREATE POLICY evaluation_select ON public.evaluations
  FOR SELECT USING (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    NOT EXISTS (
      SELECT 1 FROM public.invisible_evaluations
      WHERE code = evaluations.code AND evaluator = evaluations.evaluator
    )
  );

CREATE POLICY evaluation_insert ON public.evaluations
  FOR INSERT WITH CHECK (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = evaluator
  );

CREATE POLICY evaluation_update ON public.evaluations
  FOR UPDATE USING (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = evaluator
  ) WITH CHECK (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = evaluator
  );

CREATE POLICY evaluation_delete ON public.evaluations
  FOR DELETE USING (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = evaluator
  );

-- 非表示評価テーブル
-- 管理者のみが閲覧・編集可能
CREATE POLICY invisible_evaluation_select ON public.invisible_evaluations
  FOR SELECT USING (public.is_admin());

CREATE POLICY invisible_evaluation_insert ON public.invisible_evaluations
  FOR INSERT WITH CHECK (public.is_admin());

CREATE POLICY invisible_evaluation_update ON public.invisible_evaluations
  FOR UPDATE USING (public.is_admin()) WITH CHECK (public.is_admin());

CREATE POLICY invisible_evaluation_delete ON public.invisible_evaluations
  FOR DELETE USING (public.is_admin());

-- 通報テーブル
-- 投稿者自身が自分の通報を閲覧・編集・削除可能
-- 管理者は全ての通報を閲覧・編集・削除可能
CREATE POLICY report_select_admin ON public.reports
  FOR SELECT USING (public.is_admin());

CREATE POLICY report_select_own ON public.reports
  FOR SELECT USING (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = reporter
  );

CREATE POLICY report_insert ON public.reports
  FOR INSERT WITH CHECK (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = reporter
  );

CREATE POLICY report_update_admin ON public.reports
  FOR UPDATE USING (public.is_admin()) WITH CHECK (public.is_admin());

CREATE POLICY report_update_own ON public.reports
  FOR UPDATE USING (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = reporter
  ) WITH CHECK (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = reporter
  );

CREATE POLICY report_delete_admin ON public.reports
  FOR DELETE USING (public.is_admin());

CREATE POLICY report_delete_own ON public.reports
  FOR DELETE USING (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = reporter
  );

-- 役に立ったテーブル
-- 全ての認証ユーザーが閲覧可能
-- 投稿者自身が自分の「役に立った」を追加・編集・削除可能
CREATE POLICY useful_select ON public.usefuls
  FOR SELECT USING (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned()
  );

CREATE POLICY useful_insert ON public.usefuls
  FOR INSERT WITH CHECK (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = uid
  );

CREATE POLICY useful_update ON public.usefuls
  FOR UPDATE USING (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = uid
  ) WITH CHECK (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = uid
  );

CREATE POLICY useful_delete ON public.usefuls
  FOR DELETE USING (
    auth.role() = 'authenticated' AND 
    NOT public.is_banned() AND
    auth.uid() = uid
  );

-- 管理者は全ての「役に立った」を編集・削除可能
CREATE POLICY useful_admin_update ON public.usefuls
  FOR UPDATE USING (public.is_admin()) WITH CHECK (public.is_admin());

CREATE POLICY useful_admin_delete ON public.usefuls
  FOR DELETE USING (public.is_admin());
