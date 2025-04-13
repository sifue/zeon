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
    <div className="bg-white rounded-lg shadow-md p-6 mb-6">
      <div className="flex flex-col gap-4">
        {/* ヘッダー部分 */}
        <div className="border-b pb-4">
          <div className="flex justify-between items-start">
            <div>
              <h1 className="text-2xl font-bold">{subject.name}</h1>
              <p className="text-gray-500">科目コード: {subject.code}</p>
            </div>
            <div className="flex flex-col items-end">
              <div className="flex items-center gap-2">
                {stats.count > 0 ? (
                  <>
                    <StarRating rating={stats.average} />
                    <span className="text-gray-500">({stats.count}件の評価)</span>
                  </>
                ) : (
                  <span className="text-gray-500">評価なし</span>
                )}
              </div>
            </div>
          </div>
        </div>

        {/* 科目の概要 */}
        <div className="border-b pb-4">
          <h2 className="text-lg font-semibold mb-2">科目の概要</h2>
          <p className="text-gray-700 whitespace-pre-line">{subject.description || '未設定'}</p>
        </div>

        {/* 基本情報 */}
        <div className="border-b pb-4">
          <h2 className="text-lg font-semibold mb-2">基本情報</h2>
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <div>
              <p className="text-gray-500">開講年度</p>
              <p>{subject.opening_year}</p>
            </div>
            <div>
              <p className="text-gray-500">教員情報</p>
              <p>{formatFaculties(subject.faculties)}</p>
            </div>
            <div>
              <p className="text-gray-500">想定年次</p>
              <p>{subject.enrollment_grade}</p>
            </div>
            <div>
              <p className="text-gray-500">授業形態</p>
              <p>{subject.teaching_method || '未設定'}</p>
            </div>
            <div>
              <p className="text-gray-500">必修/選択</p>
              <p>{subject.subject_requirement || '未設定'}</p>
            </div>
            <div>
              <p className="text-gray-500">単位数</p>
              <p>{subject.credit}</p>
            </div>
            <div>
              <p className="text-gray-500">開講クォーター</p>
              <p>{formatArrayField(subject.quarters)}</p>
            </div>
            <div>
              <p className="text-gray-500">科目カテゴリ</p>
              <p>{formatArrayField(subject.subject_categories)}</p>
            </div>
          </div>
        </div>

        {/* 授業の目標 */}
        <div className="border-b pb-4">
          <h2 className="text-lg font-semibold mb-2">授業の目標</h2>
          <p className="text-gray-700 whitespace-pre-line">{subject.objective || '未設定'}</p>
        </div>

        {/* 評価方法 */}
        <div className="border-b pb-4">
          <h2 className="text-lg font-semibold mb-2">評価方法</h2>
          <p className="text-gray-700 whitespace-pre-line">{subject.evaluation_system || '未設定'}</p>
        </div>

        {/* 特記事項 */}
        {subject.special_notes && (
          <div>
            <h2 className="text-lg font-semibold mb-2">特記事項</h2>
            <p className="text-gray-700 whitespace-pre-line">{subject.special_notes}</p>
          </div>
        )}
      </div>
    </div>
  );
}
