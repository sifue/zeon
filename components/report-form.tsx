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
  const [isCommentTooLong, setIsCommentTooLong] = useState<boolean>(false);
  const MAX_COMMENT_LENGTH = 10000; // 最大文字数を10000文字に設定
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
          // 既存の通報がある場合は成功状態にして読み取りモードにする
          setSuccess(true);
        }
      } catch (error) {
        console.error('通報の取得中にエラーが発生しました', error);
      }
    };

    fetchExistingReport();
  }, [evaluationId]);

  // コメントの変更ハンドラ
  const handleCommentChange = (e: React.ChangeEvent<HTMLTextAreaElement>) => {
    const newComment = e.target.value;
    setComment(newComment);
    setIsCommentTooLong(newComment.length > MAX_COMMENT_LENGTH);
  };

  // フォーム送信ハンドラ
  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    // バリデーション
    if (!isIrrelevant && !isInappropriate && !isFake && !isOther) {
      setError('通報理由を選択してください');
      return;
    }

    // 文字数が上限を超えている場合は切り詰める
    const trimmedComment = comment.length > MAX_COMMENT_LENGTH 
      ? comment.substring(0, MAX_COMMENT_LENGTH) 
      : comment;

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
      formData.append('comment', trimmedComment);
      
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
    <div className="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 p-4">
      <div className="bg-white dark:bg-gray-800 rounded-lg shadow-xl p-4 sm:p-6 w-full max-w-md relative max-h-[90vh] overflow-y-auto">
        {/* 閉じるボタン */}
        <button
          onClick={onClose}
          className="absolute top-4 right-4 text-gray-500 dark:text-gray-400 hover:text-gray-700 dark:hover:text-gray-300"
          aria-label="閉じる"
        >
          <X size={20} />
        </button>
        
        <h2 className="text-xl font-semibold mb-4 dark:text-gray-100">
          {existingReport ? '通報内容' : '通報する'}
        </h2>
        
        {success ? (
          <div className="text-green-600 dark:text-green-400 font-medium py-4 text-center">
            {existingReport ? '通報済みです' : '通報を送信しました'}
          </div>
        ) : (
          <form onSubmit={handleSubmit} className="space-y-4">
            {/* 通報に関する注意事項 - 新規通報時のみ表示 */}
            {!existingReport && (
              <div className="bg-blue-50 dark:bg-blue-900 p-3 rounded-md mb-4 text-sm">
                <p className="font-medium text-blue-800 dark:text-blue-300 mb-1">通報に関する注意事項</p>
                <p className="text-blue-700 dark:text-blue-300 mb-2">評価は評価者によって変更される可能性があります。以下のような内容が通報の対象となります：</p>
                <ul className="list-disc pl-5 text-blue-700 dark:text-blue-300 space-y-1">
                  <li><span className="font-medium">無関係</span>：授業内容と全く関係のない投稿</li>
                  <li><span className="font-medium">不適切</span>：誹謗中傷、差別的表現、プライバシー侵害など</li>
                  <li><span className="font-medium">フェイク</span>：明らかに事実と異なる内容や捏造された情報</li>
                  <li><span className="font-medium">その他</span>：上記に当てはまらないが問題のある内容</li>
                </ul>
              </div>
            )}
            
            {/* 既存の通報がある場合の注意事項 */}
            {existingReport && (
              <div className="bg-yellow-50 dark:bg-yellow-900 p-3 rounded-md mb-4 text-sm">
                <p className="font-medium text-yellow-800 dark:text-yellow-300">通報済みの内容</p>
                <p className="text-yellow-700 dark:text-yellow-300">一度送信した通報は変更できません。内容をご確認ください。</p>
              </div>
            )}
            
            {/* 通報理由 */}
            <div>
              <p className="font-medium mb-2 dark:text-gray-200">通報理由</p>
              <div className="space-y-2">
                <label className="flex items-center dark:text-gray-300">
                  <input
                    type="checkbox"
                    checked={isIrrelevant}
                    onChange={(e) => setIsIrrelevant(e.target.checked)}
                    disabled={!!existingReport}
                    className="mr-2"
                  />
                  無関係
                </label>
                <label className="flex items-center dark:text-gray-300">
                  <input
                    type="checkbox"
                    checked={isInappropriate}
                    onChange={(e) => setIsInappropriate(e.target.checked)}
                    disabled={!!existingReport}
                    className="mr-2"
                  />
                  不適切
                </label>
                <label className="flex items-center dark:text-gray-300">
                  <input
                    type="checkbox"
                    checked={isFake}
                    onChange={(e) => setIsFake(e.target.checked)}
                    disabled={!!existingReport}
                    className="mr-2"
                  />
                  フェイク
                </label>
                <label className="flex items-center dark:text-gray-300">
                  <input
                    type="checkbox"
                    checked={isOther}
                    onChange={(e) => setIsOther(e.target.checked)}
                    disabled={!!existingReport}
                    className="mr-2"
                  />
                  その他
                </label>
              </div>
            </div>
            
            {/* コメント */}
            <div>
              <label htmlFor="comment" className="block font-medium mb-1 dark:text-gray-200">
                コメント（任意）
              </label>
              <textarea
                id="comment"
                value={comment}
                onChange={handleCommentChange}
                rows={3}
                placeholder="通報の詳細を入力してください..."
                disabled={!!existingReport}
                className={`w-full rounded-md border-gray-300 dark:border-gray-600 shadow-sm ${
                  existingReport 
                    ? 'bg-gray-100 dark:bg-gray-700 text-gray-700 dark:text-gray-300' 
                    : isCommentTooLong
                      ? 'border-red-500 focus:border-red-500 focus:ring-red-500 dark:border-red-700 dark:focus:border-red-700 dark:focus:ring-red-700'
                      : 'focus:border-blue-500 focus:ring-blue-500 dark:focus:border-blue-700 dark:focus:ring-blue-700 dark:bg-gray-700 dark:text-gray-300'
                }`}
              />
              <div className="flex justify-between text-sm mt-1">
                <span className={isCommentTooLong ? "text-red-500 dark:text-red-400" : "text-gray-500 dark:text-gray-400"}>
                  {comment.length} / {MAX_COMMENT_LENGTH}文字
                </span>
                {isCommentTooLong && (
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
            <div className="flex justify-between">
              <button
                type="button"
                onClick={onClose}
                className="px-4 py-2 border border-gray-300 dark:border-gray-600 text-gray-700 dark:text-gray-300 rounded-md hover:bg-gray-50 dark:hover:bg-gray-700 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-gray-500 dark:focus:ring-gray-400 dark:focus:ring-offset-gray-800"
              >
                {existingReport ? '閉じる' : 'キャンセル'}
              </button>
              {!existingReport && (
                <button
                  type="submit"
                  disabled={isSubmitting}
                  className="px-4 py-2 bg-blue-600 dark:bg-blue-700 text-white rounded-md hover:bg-blue-700 dark:hover:bg-blue-800 focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-blue-500 dark:focus:ring-blue-400 dark:focus:ring-offset-gray-800 disabled:opacity-50"
                >
                  {isSubmitting ? '送信中...' : '送信'}
                </button>
              )}
            </div>
          </form>
        )}
      </div>
    </div>
  );
}
