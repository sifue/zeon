import React from 'react';
import { StarRating } from '@/components/star-rating';

// 科目の型定義
type Subject = {
  code: string;
  name: string;
  description: string;
  opening_year: number;
  faculties: any; // JSONBフィールド
  enrollment_grade: number;
  teaching_method: string;
  subject_requirement: string;
  credit: number;
  quarters: any; // JSONBフィールド
  objective: string;
  evaluation_system: string;
  special_notes: string;
  subject_categories: any; // JSONBフィールド
};

// 評価統計の型定義
type EvaluationStats = {
  count: number;
  average: number;
};

// コンポーネントのプロパティ
interface SubjectDetailProps {
  subject: Subject;
  stats: EvaluationStats;
}

// 配列データを表示するヘルパー関数
const formatArrayField = (field: any) => {
  if (!field || !Array.isArray(field)) return '未設定';
  return field.join(', ');
};

// 教員情報を表示するヘルパー関数
const formatFaculties = (faculties: any) => {
  if (!faculties || !Array.isArray(faculties)) return '未設定';
  
  return faculties.map((faculty: any) => faculty.name).join(', ');
};

// 科目詳細表示コンポーネント
export function SubjectDetail({ subject, stats }: SubjectDetailProps) {
  return (
    <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 mb-6">
      <div className="flex flex-col gap-4">
        {/* ヘッダー部分 */}
        <div className="border-b dark:border-gray-700 pb-4">
          <div className="flex flex-col sm:flex-row sm:justify-between sm:items-start gap-2">
            <div>
              <h1 className="text-2xl font-bold dark:text-gray-100">{subject.name}</h1>
              <p className="text-gray-500 dark:text-gray-400">科目コード: {subject.code}</p>
            </div>
            <div className="flex flex-col items-start sm:items-end">
              <div className="flex items-center gap-2">
                {stats.count > 0 ? (
                  <>
                    <StarRating rating={stats.average} />
                    <span className="text-gray-500 dark:text-gray-400">({stats.count}件の評価)</span>
                  </>
                ) : (
                  <span className="text-gray-500 dark:text-gray-400">評価なし</span>
                )}
              </div>
            </div>
          </div>
        </div>

        {/* 科目の概要 */}
        <div className="border-b dark:border-gray-700 pb-4">
          <h2 className="text-lg font-semibold mb-2 dark:text-gray-200">科目の概要</h2>
          <p className="text-gray-700 dark:text-gray-300 whitespace-pre-line">{subject.description || '未設定'}</p>
        </div>

        {/* 基本情報 */}
        <div className="border-b dark:border-gray-700 pb-4">
          <h2 className="text-lg font-semibold mb-2 dark:text-gray-200">基本情報</h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <p className="text-gray-500 dark:text-gray-400">開講年度</p>
              <p className="dark:text-gray-300">{subject.opening_year}</p>
            </div>
            <div>
              <p className="text-gray-500 dark:text-gray-400">教員情報</p>
              <p className="dark:text-gray-300">{formatFaculties(subject.faculties)}</p>
            </div>
            <div>
              <p className="text-gray-500 dark:text-gray-400">想定年次</p>
              <p className="dark:text-gray-300">{subject.enrollment_grade}</p>
            </div>
            <div>
              <p className="text-gray-500 dark:text-gray-400">授業形態</p>
              <p className="dark:text-gray-300">{subject.teaching_method || '未設定'}</p>
            </div>
            <div>
              <p className="text-gray-500 dark:text-gray-400">必修/選択</p>
              <p className="dark:text-gray-300">{subject.subject_requirement || '未設定'}</p>
            </div>
            <div>
              <p className="text-gray-500 dark:text-gray-400">単位数</p>
              <p className="dark:text-gray-300">{subject.credit}</p>
            </div>
            <div>
              <p className="text-gray-500 dark:text-gray-400">開講クォーター</p>
              <p className="dark:text-gray-300">{formatArrayField(subject.quarters)}</p>
            </div>
            <div>
              <p className="text-gray-500 dark:text-gray-400">科目カテゴリ</p>
              <p className="dark:text-gray-300">{formatArrayField(subject.subject_categories)}</p>
            </div>
          </div>
        </div>

        {/* 授業の目標 */}
        <div className="border-b dark:border-gray-700 pb-4">
          <h2 className="text-lg font-semibold mb-2 dark:text-gray-200">授業の目標</h2>
          <p className="text-gray-700 dark:text-gray-300 whitespace-pre-line">{subject.objective || '未設定'}</p>
        </div>

        {/* 評価方法 */}
        <div className="border-b dark:border-gray-700 pb-4">
          <h2 className="text-lg font-semibold mb-2 dark:text-gray-200">評価方法</h2>
          <p className="text-gray-700 dark:text-gray-300 whitespace-pre-line">{subject.evaluation_system || '未設定'}</p>
        </div>

        {/* 特記事項 */}
        {subject.special_notes && (
          <div className="border-b dark:border-gray-700 pb-4">
            <h2 className="text-lg font-semibold mb-2 dark:text-gray-200">特記事項</h2>
            <p className="text-gray-700 dark:text-gray-300 whitespace-pre-line">{subject.special_notes}</p>
          </div>
        )}

        {/* 公式シラバスへのリンク */}
        <div>
          <h2 className="text-lg font-semibold mb-2 dark:text-gray-200">公式シラバス</h2>
          <a 
            href={`https://syllabus.zen.ac.jp/subjects/${subject.opening_year}/${subject.code}`}
            target="_blank"
            rel="noopener noreferrer"
            className="text-blue-600 dark:text-blue-400 hover:text-blue-800 dark:hover:text-blue-300 underline"
          >
            公式シラバスを開く
          </a>
        </div>
      </div>
    </div>
  );
}
