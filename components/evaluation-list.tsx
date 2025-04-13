"use client";

import React, { useState, useEffect } from 'react';
import { StarRating } from '@/components/star-rating';
import { formatDistanceToNow } from 'date-fns';
import { ja } from 'date-fns/locale';
import { toggleUsefulAction } from '@/app/actions';
import { ThumbsUp, Flag } from 'lucide-react';

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
    raw_user_meta_data?: {
      name?: string;
    };
  };
  useful_count: number;
  is_useful?: boolean; // ユーザーが「役に立った」を押したかどうか
};

// コンポーネントのプロパティ
interface EvaluationListProps {
  evaluations: Evaluation[];
}

// 評価者名を表示するヘルパー関数
const formatEvaluatorName = (evaluation: Evaluation) => {
  // Display Nameがある場合はそれを使用
  if (evaluation.users?.raw_user_meta_data?.name) {
    return evaluation.users.raw_user_meta_data.name;
  }
  
  // Display Nameがない場合はメールアドレスからユーザー名部分を抽出
  if (evaluation.users?.email) {
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

// ユーザーが「役に立った」を押したかどうかを確認する関数
const checkUserUseful = async (evaluationId: number) => {
  // この関数は将来的に実装する予定
  // 現在はローカルストレージを使用して簡易的に実装
  const usefulItems = localStorage.getItem('useful_items');
  if (usefulItems) {
    const items = JSON.parse(usefulItems);
    return items.includes(evaluationId);
  }
  return false;
};

// 「役に立った」の状態を保存する関数
const saveUserUseful = (evaluationId: number, isUseful: boolean) => {
  const usefulItems = localStorage.getItem('useful_items');
  let items: number[] = [];
  
  if (usefulItems) {
    items = JSON.parse(usefulItems);
  }
  
  if (isUseful) {
    // 追加
    if (!items.includes(evaluationId)) {
      items.push(evaluationId);
    }
  } else {
    // 削除
    items = items.filter(id => id !== evaluationId);
  }
  
  localStorage.setItem('useful_items', JSON.stringify(items));
};

// レビュー一覧表示コンポーネント
export function EvaluationList({ evaluations: initialEvaluations }: EvaluationListProps) {
  // 評価一覧の状態
  const [evaluations, setEvaluations] = useState<Evaluation[]>(initialEvaluations);
  
  // コンポーネントがマウントされたときに「役に立った」の状態を確認
  useEffect(() => {
    const checkUsefulStatus = async () => {
      if (typeof window !== 'undefined') {
        const updatedEvaluations = await Promise.all(
          initialEvaluations.map(async (evaluation) => {
            const isUseful = await checkUserUseful(evaluation.id);
            return { ...evaluation, is_useful: isUseful };
          })
        );
        setEvaluations(updatedEvaluations);
      }
    };
    
    checkUsefulStatus();
  }, [initialEvaluations]);
  
  // 「役に立った」ボタンのクリックハンドラ
  const handleUsefulClick = async (evaluationId: number, index: number) => {
    try {
      // フォームデータを作成
      const formData = new FormData();
      formData.append('evaluation_id', evaluationId.toString());
      
      // サーバーアクションを実行
      const result = await toggleUsefulAction(formData);
      
      if (result.success) {
        // 評価一覧を更新
        const newEvaluations = [...evaluations];
        const evaluation = newEvaluations[index];
        
        // 「役に立った」の状態を更新
        const newIsUseful = !evaluation.is_useful;
        evaluation.is_useful = newIsUseful;
        
        // 「役に立った」の数を更新
        evaluation.useful_count += newIsUseful ? 1 : -1;
        
        // ローカルストレージに保存
        saveUserUseful(evaluationId, newIsUseful);
        
        setEvaluations(newEvaluations);
      }
    } catch (error) {
      console.error('役に立ったの操作中にエラーが発生しました', error);
    }
  };

  if (evaluations.length === 0) {
    return (
      <div className="text-center py-8 text-gray-500">
        まだレビューがありません。最初のレビューを投稿してみませんか？
      </div>
    );
  }

  return (
    <div className="space-y-6">
      {evaluations.map((evaluation, index) => (
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
                className={`flex items-center gap-1 px-2 py-1 rounded-md ${
                  evaluation.is_useful 
                    ? 'text-white bg-blue-500 hover:bg-blue-600' 
                    : 'text-gray-500 hover:text-blue-500 hover:bg-gray-100'
                }`}
                onClick={() => handleUsefulClick(evaluation.id, index)}
                aria-label="役に立った"
              >
                <ThumbsUp size={16} />
              </button>
              <button
                className="text-gray-500 hover:text-red-500 hover:bg-gray-100 px-2 py-1 rounded-md ml-2 flex items-center"
                aria-label="通報"
              >
                <Flag size={16} />
              </button>
            </div>
          </div>
          <div className="whitespace-pre-line text-gray-700">{evaluation.review}</div>
        </div>
      ))}
    </div>
  );
}
