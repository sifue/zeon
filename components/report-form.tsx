"use client";

import React, { useState, useEffect } from 'react';
import { X } from 'lucide-react';
import { submitReportAction, deleteReportAction, getReportByEvaluationId } from '@/app/actions';

// 通報の型定義
type Report = {
  id: number;
  evaluation_id: number;
  reporter: string;
  is_irrelevant: boolean;
  is_inappropriate: boolean;
  is_fake: boolean;
  is_other: boolean;
  comment: string;
  created_at: string;
};

// コンポーネントのプロパティ
interface ReportFormProps {
  evaluationId: number;
  onClose: () => void;
  onSubmit?: () => void;
}

export function ReportForm({ evaluationId, onClose, onSubmit }: ReportFormProps) {
  // フォームの状態
  const [isIrrelevant, setIsIrrelevant] = useState<boolean>(false);
  const [isInappropriate, setIsInappropriate] = useState<boolean>(false);
  const [isFake, setIsFake] = useState<boolean>(false);
  const [isOther, setIsOther] = useState<boolean>(false);
  const [comment, setComment] = useState<string>('');
  const [existingReport, setExistingReport] = useState<Report | null>(null);
  const [isSubmitting, setIsSubmitting] = useState<boolean>(false);
  const [isDeleting, setIsDeleting] = useState<boolean>(false);
  const [error, setError] = useState<string>('');
  const [success, setSuccess] = useState<boolean>(false);

  // コンポーネントがマウントされたときに既存の通報を取得
  useEffect(() => {
    const fetchExistingReport = async () => {
      try {
        const report = await getReportByEvaluationId(evaluationId);
        if (report) {
          setExistingReport(report);
          setIsIrrelevant(report.is_irrelevant);
          setIsInappropriate(report.is_inappropriate);
          setIsFake(report.is_fake);
          setIsOther(report.is_other);
          setComment(report.comment || '');
        }
      } catch (error) {
        console.error('通報の取得中にエラーが発生しました', error);
      }
    };

    fetchExistingReport();
  }, [evaluationId]);

  // フォーム送信ハンドラ
  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    // バリデーション
    if (!isIrrelevant && !isInappropriate && !isFake && !isOther) {
      setError('通報理由を選択してください');
      return;
    }

    setIsSubmitting(true);
    setError('');
    
    try {
      // フォームデータを作成
      const formData = new FormData();
      formData.append('evaluation_id', evaluationId.toString());
      if (existingReport?.id) {
        formData.append('id', existingReport.id.toString());
      }
      formData.append('is_irrelevant', isIrrelevant.toString());
      formData.append('is_inappropriate', isInappropriate.toString());
      formData.append('is_fake', isFake.toString());
      formData.append('is_other', isOther.toString());
      formData.append('comment', comment);
      
      // サーバーアクションを実行
      const result = await submitReportAction(formData);
      
      if (result.success) {
        setSuccess(true);
        // 成功メッセージを表示した後、フォームを閉じる
        setTimeout(() => {
          onClose();
          if (onSubmit) onSubmit();
        }, 1500);
      } else {
        setError(result.error || '通報の送信中にエラーが発生しました');
      }
    } catch (error) {
      setError('通報の送信中にエラーが発生しました');
      console.error(error);
    } finally {
      setIsSubmitting(false);
    }
  };

  // 削除ハンドラ
  const handleDelete = async () => {
    if (!existingReport) return;
    
    if (!window.confirm('この通報を削除してもよろしいですか？')) {
      return;
    }

    setIsDeleting(true);
    setError('');
    
    try {
      // フォームデータを作成
      const formData = new FormData();
      formData.append('id', existingReport.id.toString());
      formData.append('evaluation_id', evaluationId.toString());
      
      // サーバーアクションを実行
      const result = await deleteReportAction(formData);
      
      if (result.success) {
        setSuccess(true);
        // 成功メッセージを表示した後、フォームを閉じる
        setTimeout(() => {
          onClose();
          if (onSubmit) onSubmit();
        }, 1500);
      } else {
        setError('通報の削除中にエラーが発生しました');
      }
    } catch (error) {
      setError('通報の削除中にエラーが発生しました');
      console.error(error);
    } finally {
      setIsDeleting(false);
    }
  };

  return (
    <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50">
      <div className="bg-white rounded-lg shadow-xl p-6 w-full max-w-md relative">
        {/* 閉じるボタン */}
        <button
          onClick={onClose}
          className="absolute top-4 right-4 text-gray-500 hover:text-gray-700"
          aria-label="閉じる"
        >
          <X size={20} />
        </button>
        
        <h2 className="text-xl font-semibold mb-4">
          {existingReport ? '通報を編集' : '通報する'}
        </h2>
        
        {success ? (
          <div className="text-green-600 font-medium py-4 text-center">
            {existingReport ? '通報を更新しました' : '通報を送信しました'}
          </div>
        ) : (
          <form onSubmit={handleSubmit} className="space-y-4">
            {/* 通報理由 */}
            <div>
              <p className="font-medium mb-2">通報理由</p>
              <div className="space-y-2">
                <label className="flex items-center">
                  <input
                    type="checkbox"
                    checked={isIrrelevant}
                    onChange={(e) => setIsIrrelevant(e.target.checked)}
                    className="mr-2"
                  />
                  無関係
                </label>
                <label className="flex items-center">
                  <input
                    type="checkbox"
                    checked={isInappropriate}
                    onChange={(e) => setIsInappropriate(e.target.checked)}
                    className="mr-2"
                  />
                  不適切
                </label>
                <label className="flex items-center">
                  <input
                    type="checkbox"
                    checked={isFake}
                    onChange={(e) => setIsFake(e.target.checked)}
                    className="mr-2"
                  />
                  フェイク
                </label>
                <label className="flex items-center">
                  <input
                    type="checkbox"
                    checked={isOther}
                    onChange={(e) => setIsOther(e.target.checked)}
                    className="mr-2"
                  />
                  その他
                </label>
              </div>
            </div>
            
            {/* コメント */}
            <div>
              <label htmlFor="comment" className="block font-medium mb-1">
                コメント（任意）
              </label>
              <textarea
                id="comment"
                value={comment}
                onChange={(e) => setComment(e.target.value)}
                rows={3}
                placeholder="通報の詳細を入力してください..."
                className="w-full rounded-md border-gray-300 shadow-sm focus:border-blue-500 focus:ring-blue-500"
              />
            </div>
            
            {/* エラーメッセージ */}
            {error && (
              <div className="text-red-500 text-sm">{error}</div>
            )}
            
            {/* ボタン */}
            <div className="flex justify-between">
              {existingReport ? (
                <>
                  <button
                    type="button"
                    onClick={handleDelete}
                    disabled={isSubmitting || isDeleting}
                    className="px-4 py-2 border border-red-600 text-red-600 rounded-md hover:bg-red-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-red-500 disabled:opacity-50"
                  >
                    {isDeleting ? '削除中...' : '削除'}
                  </button>
                  <button
                    type="submit"
                    disabled={isSubmitting || isDeleting}
                    className="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 disabled:opacity-50"
                  >
                    {isSubmitting ? '更新中...' : '更新'}
                  </button>
                </>
              ) : (
                <>
                  <button
                    type="button"
                    onClick={onClose}
                    className="px-4 py-2 border border-gray-300 text-gray-700 rounded-md hover:bg-gray-50 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500"
                  >
                    キャンセル
                  </button>
                  <button
                    type="submit"
                    disabled={isSubmitting}
                    className="px-4 py-2 bg-blue-600 text-white rounded-md hover:bg-blue-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 disabled:opacity-50"
                  >
                    {isSubmitting ? '送信中...' : '送信'}
                  </button>
                </>
              )}
            </div>
          </form>
        )}
      </div>
    </div>
  );
}
