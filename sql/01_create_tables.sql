-- ZEONデータベース構築スクリプト
-- 01_create_tables.sql
-- テーブル作成、インデックス設定、制約設定

-- 管理者テーブル
CREATE TABLE IF NOT EXISTS public.admins (
  uid UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE
);

-- BANされたユーザーテーブル
CREATE TABLE IF NOT EXISTS public.banned_users (
  uid UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE
);

-- 科目テーブル
CREATE TABLE IF NOT EXISTS public.subjects (
  code VARCHAR PRIMARY KEY,
  name VARCHAR NOT NULL,
  description TEXT,
  opening_year INTEGER NOT NULL,
  faculties JSONB,
  enrollment_grade INTEGER,
  teaching_method VARCHAR,
  subject_requirement VARCHAR,
  credit INTEGER,
  quarters JSONB,
  objective TEXT,
  evaluation_system TEXT,
  special_notes TEXT,
  subject_categories JSONB,
  updated_at TIMESTAMPTZ DEFAULT now()
);

-- 科目テーブルのインデックス
CREATE INDEX IF NOT EXISTS idx_subjects_enrollment_grade ON public.subjects(enrollment_grade);

-- 評価テーブル
CREATE TABLE IF NOT EXISTS public.evaluations (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  code VARCHAR NOT NULL REFERENCES public.subjects(code) ON DELETE CASCADE,
  evaluator UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  evaluation INTEGER NOT NULL CHECK (evaluation BETWEEN 1 AND 5),
  review TEXT,
  year INTEGER NOT NULL,
  quarter VARCHAR NOT NULL,
  created_at TIMESTAMPTZ DEFAULT now(),
  updated_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(code, evaluator)
);

-- 評価テーブルのインデックス
CREATE INDEX IF NOT EXISTS idx_evaluations_code_evaluator ON public.evaluations(code, evaluator);

-- 非表示評価テーブル
CREATE TABLE IF NOT EXISTS public.invisible_evaluations (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  code VARCHAR NOT NULL,
  evaluator UUID NOT NULL,
  updated_by UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  updated_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(code, evaluator),
  FOREIGN KEY (code, evaluator) REFERENCES public.evaluations(code, evaluator) ON DELETE CASCADE
);

-- 非表示評価テーブルのインデックス
CREATE INDEX IF NOT EXISTS idx_invisible_evaluations_code_evaluator ON public.invisible_evaluations(code, evaluator);

-- 通報テーブル
CREATE TABLE IF NOT EXISTS public.reports (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  evaluation_id BIGINT NOT NULL REFERENCES public.evaluations(id) ON DELETE CASCADE,
  reporter UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  is_irrelevant BOOLEAN DEFAULT false,
  is_inappropriate BOOLEAN DEFAULT false,
  is_fake BOOLEAN DEFAULT false,
  is_other BOOLEAN DEFAULT false,
  comment TEXT,
  created_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(evaluation_id, reporter)
);

-- 通報テーブルのインデックス
CREATE INDEX IF NOT EXISTS idx_reports_evaluation_id_reporter ON public.reports(evaluation_id, reporter);

-- 役に立ったテーブル
CREATE TABLE IF NOT EXISTS public.usefuls (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  evaluation_id BIGINT NOT NULL REFERENCES public.evaluations(id) ON DELETE CASCADE,
  uid UUID NOT NULL REFERENCES auth.users(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ DEFAULT now(),
  UNIQUE(evaluation_id, uid)
);

-- 役に立ったテーブルのインデックス
CREATE INDEX IF NOT EXISTS idx_usefuls_evaluation_id_uid ON public.usefuls(evaluation_id, uid);
