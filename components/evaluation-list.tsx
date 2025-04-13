import React from 'react';
import { StarRating } from '@/components/star-rating';
import { formatDistanceToNow } from 'date-fns';
import { ja } from 'date-fns/locale';

// 評価の型定義
type Evaluation = {
  id: number;
  code: string;
  evaluator: string;
  evaluation: number;
  review: string;
  year: number;
  quarter: string;
  created_at: string;
  updated_at: string;
  users?: {
    email: string;
  };
  useful_count: number;
};

// コンポーネントのプロパティ
interface EvaluationListProps {
  evaluations: Evaluation[];
}

// 評価者名を表示するヘルパー関数
const formatEvaluatorName = (evaluation: Evaluation) => {
  if (evaluation.users?.email) {
    // メールアドレスからユーザー名部分を抽出
    const emailParts = evaluation.users.email.split('@');
    if (emailParts.length > 0) {
      return emailParts[0];
    }
  }
  return '匿名';
};

// 日付をフォーマットするヘルパー関数
const formatDate = (dateString: string) => {
  try {
    const date = new Date(dateString);
    return formatDistanceToNow(date, { addSuffix: true, locale: ja });
  } catch (error) {
    return '日付不明';
  }
};

// レビュー一覧表示コンポーネント
export function EvaluationList({ evaluations }: EvaluationListProps) {
  if (evaluations.length === 0) {
    return (
      <div className="text-center py-8 text-gray-500">
        まだレビューがありません。最初のレビューを投稿してみませんか？
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {evaluations.map((evaluation) => (
        <div key={evaluation.id} className="bg-white rounded-lg shadow-md p-6">
          <div className="flex justify-between items-start mb-4">
            <div>
              <div className="flex items-center gap-2 mb-1">
                <StarRating rating={evaluation.evaluation} />
                <span className="text-gray-500">
                  {evaluation.year}年度 {evaluation.quarter}
                </span>
              </div>
              <p className="text-sm text-gray-500">
                {formatEvaluatorName(evaluation)}さんが{formatDate(evaluation.created_at)}
              </p>
            </div>
            <div className="flex items-center gap-2">
              <span className="text-sm text-gray-500">
                役に立った: {evaluation.useful_count}
              </span>
              <button
                className="text-gray-500 hover:text-blue-500 text-sm"
                aria-label="役に立った"
              >
                👍
              </button>
              <button
                className="text-gray-500 hover:text-red-500 text-sm ml-2"
                aria-label="通報"
              >
                🚩
              </button>
            </div>
          </div>
          <div className="whitespace-pre-line text-gray-700">{evaluation.review}</div>
        </div>
      ))}
    </div>
  );
}
