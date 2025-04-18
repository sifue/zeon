"use client";

import React, { useState, useEffect } from 'react';
import { Trash2, Send, Edit2, EyeOff } from 'lucide-react';
import { checkEvaluationInvisible } from '@/app/actions';

// 評価の型定義
type Evaluation = {
  id?: number;
  code: string;
  evaluation: number;
  review: string;
  year: number;
  quarter: string;
};

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

// コンポーネントのプロパティ
interface EvaluationFormProps {
  subjectCode: string;
  subject: Subject;
  existingEvaluation?: Evaluation;
  submitAction: (formData: FormData) => Promise<{ success: boolean; code: string }>;
  deleteAction?: (formData: FormData) => Promise<{ success: boolean; code: string }>;
}

// 現在の年度を取得する関数
const getCurrentYear = () => {
  return new Date().getFullYear();
};

// 星評価入力コンポーネント
const StarRatingInput = ({ value, onChange }: { value: number; onChange: (rating: number) => void }) => {
  const [hoverRating, setHoverRating] = useState(0);

  return (
    <div className="flex items-center">
      {[1, 2, 3, 4, 5].map((star) => (
        <button
          key={star}
          type="button"
          className="text-2xl focus:outline-none"
          onClick={() => onChange(star)}
          onMouseEnter={() => setHoverRating(star)}
          onMouseLeave={() => setHoverRating(0)}
        >
          <span className={`${
            (hoverRating || value) >= star 
              ? 'text-yellow-500' 
              : 'text-gray-300 dark:text-gray-600'
          }`}>
            ★
          </span>
        </button>
      ))}
      <span className="ml-2 text-gray-700 dark:text-gray-300">
        {value > 0 ? `${value}点` : '評価を選択'}
      </span>
    </div>
  );
};

// 評価投稿フォームコンポーネント
export function EvaluationForm({ 
  subjectCode, 
  subject,
  existingEvaluation, 
  submitAction, 
  deleteAction 
}: EvaluationFormProps) {
  // フォームの状態
  const [evaluation, setEvaluation] = useState<number>(existingEvaluation?.evaluation || 0);
  const [review, setReview] = useState<string>(existingEvaluation?.review || '');
  const [isReviewTooLong, setIsReviewTooLong] = useState<boolean>(false);
  const MAX_REVIEW_LENGTH = 10000; // 最大文字数を10000文字に設定
  const [year, setYear] = useState<number>(existingEvaluation?.year || Math.max(getCurrentYear(), 2025));
  const [quarter, setQuarter] = useState<string>(existingEvaluation?.quarter || 'Q1');
  const [isSubmitting, setIsSubmitting] = useState<boolean>(false);
  const [isDeleting, setIsDeleting] = useState<boolean>(false);
  const [error, setError] = useState<string>('');
  const [isInvisible, setIsInvisible] = useState<boolean>(false);
  const [formKey, setFormKey] = useState<number>(0); // フォームリセット用のキー
  
  // 非表示状態をチェック
  useEffect(() => {
    const checkInvisibleStatus = async () => {
      if (subjectCode) {
        try {
          // createClient()からユーザー情報を取得する代わりに、
          // 直接checkEvaluationInvisible関数を使用
          const isInvisibleResult = await checkEvaluationInvisible(subjectCode, 'current');
          setIsInvisible(isInvisibleResult);
        } catch (err) {
          console.error('非表示状態の確認中にエラーが発生しました', err);
        }
      }
    };
    
    checkInvisibleStatus();
  }, [subjectCode]);

  // NEXT_REDIRECTエラーかどうかをチェックする関数
  const isRedirectError = (error: any) => {
    return error && (
      error.message === 'NEXT_REDIRECT' || 
      (error.digest && error.digest.startsWith('NEXT_REDIRECT'))
    );
  };

  // レビューの変更ハンドラ
  const handleReviewChange = (e: React.ChangeEvent<HTMLTextAreaElement>) => {
    const newReview = e.target.value;
    setReview(newReview);
    setIsReviewTooLong(newReview.length > MAX_REVIEW_LENGTH);
  };

  // フォーム送信ハンドラ
  const handleSubmit = async (formData: FormData) => {
    // クライアント側のバリデーション
    const evalValue = parseInt(formData.get('evaluation') as string);
    let reviewValue = formData.get('review') as string;
    
    if (evalValue === 0 || isNaN(evalValue)) {
      setError('評価を選択してください');
      return;
    }

    if (!reviewValue.trim()) {
      setError('レビューを入力してください');
      return;
    }

    // 文字数が上限を超えている場合は切り詰める
    if (reviewValue.length > MAX_REVIEW_LENGTH) {
      reviewValue = reviewValue.substring(0, MAX_REVIEW_LENGTH);
      // FormDataオブジェクトの値を更新
      formData.set('review', reviewValue);
    }

    setIsSubmitting(true);
    setError('');
    
    try {
      // フォームアクションを実行
      const result = await submitAction(formData);
      
      if (result.success) {
        // 成功した場合は、クライアントサイドでリダイレクト
        window.location.href = `/subject/${result.code}`;
      } else {
        // 失敗した場合は、エラーメッセージを表示
        setError('評価の送信中にエラーが発生しました');
      }
    } catch (err) {
      // エラーが発生した場合は、エラーメッセージを表示
      setError('評価の送信中にエラーが発生しました');
      console.error(err);
    } finally {
      setIsSubmitting(false);
    }
  };

  // 削除ハンドラ
  const handleDelete = async (formData: FormData) => {
    if (!deleteAction) return;
    
    if (!window.confirm('この評価を削除してもよろしいですか？')) {
      return;
    }

    setIsDeleting(true);
    setError('');
    
    try {
      // 削除アクションを実行
      const result = await deleteAction(formData);
      
      if (result.success) {
        // 成功した場合は、クライアントサイドでリダイレクト
        window.location.href = `/subject/${result.code}`;
        
        // フォームをリセット
        setEvaluation(0);
        setReview('');
        setYear(Math.max(getCurrentYear(), 2025));
        setQuarter('Q1');
        setFormKey(prev => prev + 1);
      } else {
        // 失敗した場合は、エラーメッセージを表示
        setError('評価の削除中にエラーが発生しました');
      }
    } catch (err) {
      // エラーが発生した場合は、エラーメッセージを表示
      setError('評価の削除中にエラーが発生しました');
      console.error(err);
    } finally {
      setIsDeleting(false);
    }
  };

  return (
    <div className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-6">
      <h2 className="text-xl font-semibold mb-4 dark:text-gray-100">
        {existingEvaluation ? '評価を編集' : '新しい評価を投稿'}
      </h2>
      
      {isInvisible && (
        <div className="bg-red-100 dark:bg-red-900 text-red-800 dark:text-red-300 px-4 py-3 rounded-md mb-4 text-sm font-medium flex items-center">
          <EyeOff size={18} className="mr-2" />
          <div>
            <p className="font-bold">この評価は運営チームにより非表示に設定されています</p>
            <p>評価の投稿や編集はできません。詳細はお問い合わせください。</p>
          </div>
        </div>
      )}
      
      <form key={formKey} action={handleSubmit} className="space-y-4" onSubmit={(e) => {
        if (isInvisible) {
          e.preventDefault();
          setError('あなたの評価はZEON運営チームにより非表示にされています');
          return false;
        }
      }}>
        {/* 隠しフィールド */}
        <input type="hidden" name="code" value={subjectCode} />
        {existingEvaluation?.id && (
          <input type="hidden" name="id" value={existingEvaluation.id} />
        )}
        <input type="hidden" name="evaluation" value={evaluation} />
        {/* 評価の星の数 */}
        <div>
          <label className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
            評価
          </label>
          <StarRatingInput 
            value={evaluation} 
            onChange={(rating) => setEvaluation(rating)} 
          />
        </div>
        
        {/* 年度とクォーター */}
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          {/* 評価した年度 */}
          <div>
            <label htmlFor="year" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              評価した年度
            </label>
            <select
              id="year"
              name="year"
              value={year}
              onChange={(e) => setYear(Number(e.target.value))}
              className="w-full rounded-md border-gray-300 dark:border-gray-600 shadow-sm focus:border-blue-500 focus:ring-blue-500 dark:bg-gray-700 dark:text-gray-300"
            >
    {[2025, 2026, 2027, 2028, 2029, 2030, 2031, 2032].map((yearValue) => (
      <option key={yearValue} value={yearValue}>
        {yearValue}年度
      </option>
    ))}
            </select>
          </div>
          
          {/* 評価したクォーター */}
          <div>
            <label htmlFor="quarter" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
              評価したクォーター
            </label>
            <select
              id="quarter"
              name="quarter"
              value={quarter}
              onChange={(e) => setQuarter(e.target.value)}
              className="w-full rounded-md border-gray-300 dark:border-gray-600 shadow-sm focus:border-blue-500 focus:ring-blue-500 dark:bg-gray-700 dark:text-gray-300"
            >
              {/* 科目の開講クォーターから選択肢を生成 */}
              {subject && subject.quarters && Array.isArray(subject.quarters) ? (
                subject.quarters.map((q: string) => (
                  <option key={q} value={q}>{q}</option>
                ))
              ) : (
                // デフォルトの選択肢
                <>
                  <option value="1Q">1Q</option>
                  <option value="2Q">2Q</option>
                  <option value="3Q">3Q</option>
                  <option value="4Q">4Q</option>
                  <option value="1-2Q">1-2Q</option>
                  <option value="3-4Q">3-4Q</option>
                  <option value="1-4Q">1-4Q</option>
                </>
              )}
            </select>
          </div>
        </div>
        
        {/* レビュー */}
        <div>
          <label htmlFor="review" className="block text-sm font-medium text-gray-700 dark:text-gray-300 mb-1">
            レビュー
          </label>
          <textarea
            id="review"
            name="review"
            value={review}
            onChange={handleReviewChange}
            rows={5}
            placeholder="この科目についてのレビューを書いてください..."
            className={`w-full rounded-md border-gray-300 dark:border-gray-600 shadow-sm dark:bg-gray-700 dark:text-gray-300 ${
              isReviewTooLong
                ? 'border-red-500 focus:border-red-500 focus:ring-red-500 dark:border-red-700 dark:focus:border-red-700 dark:focus:ring-red-700'
                : 'focus:border-blue-500 focus:ring-blue-500 dark:focus:border-blue-700 dark:focus:ring-blue-700'
            }`}
          />
          <div className="flex justify-between text-sm mt-1">
            <span className={isReviewTooLong ? "text-red-500 dark:text-red-400" : "text-gray-500 dark:text-gray-400"}>
              {review.length} / {MAX_REVIEW_LENGTH}文字
            </span>
            {isReviewTooLong && (
              <span className="text-red-500 dark:text-red-400">
                1万文字を超えています。投稿時に1万文字までに切り詰められます。
              </span>
            )}
          </div>
        </div>
        
        {/* エラーメッセージ */}
        {error && (
          <div className="text-red-500 dark:text-red-400 text-sm">{error}</div>
        )}
        
        {/* ボタン */}
        <div className="flex flex-col-reverse sm:flex-row sm:justify-between gap-3">
          <div>
            {existingEvaluation && deleteAction && (
              <button
                type="button"
                onClick={() => {
                  const formData = new FormData();
                  formData.append('id', existingEvaluation.id!.toString());
                  formData.append('code', subjectCode);
                  handleDelete(formData);
                }}
                disabled={isDeleting || isSubmitting}
                className="w-full sm:w-auto inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-red-600 dark:bg-red-700 hover:bg-red-700 dark:hover:bg-red-800 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 dark:focus:ring-red-400 dark:focus:ring-offset-gray-800 disabled:opacity-50"
              >
                <Trash2 className="mr-2 h-4 w-4" />
                {isDeleting ? '削除中...' : '削除'}
              </button>
            )}
          </div>
          
          <button
            type="submit"
            disabled={isSubmitting || isDeleting}
            className="w-full sm:w-auto inline-flex items-center justify-center px-4 py-2 border border-transparent rounded-md shadow-sm text-sm font-medium text-white bg-blue-600 dark:bg-blue-700 hover:bg-blue-700 dark:hover:bg-blue-800 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 dark:focus:ring-blue-400 dark:focus:ring-offset-gray-800 disabled:opacity-50"
          >
            {existingEvaluation ? (
              <>
                <Edit2 className="mr-2 h-4 w-4" />
                {isSubmitting ? '更新中...' : '更新'}
              </>
            ) : (
              <>
                <Send className="mr-2 h-4 w-4" />
                {isSubmitting ? '投稿中...' : '投稿'}
              </>
            )}
          </button>
        </div>
      </form>
    </div>
  );
}
