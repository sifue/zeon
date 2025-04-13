-- ZEONデータベース構築スクリプト
-- 03_initial_data.sql
-- 初期データ投入

-- 管理者データの登録
INSERT INTO public.admins (uid)
VALUES ('1bebff21-b3a4-4498-9b2a-2a93cc75247f') -- 吉村総一郎
ON CONFLICT (uid) DO NOTHING;

-- 注: 科目データは 03_initial_data_generator.js スクリプトを実行して生成された
-- 03_initial_data_subjects_grade1.sql, 03_initial_data_subjects_grade2.sql などのファイルから
-- 登録してください。
