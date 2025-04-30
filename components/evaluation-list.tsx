"use client";

import React, { useState, useEffect, useRef } from 'react';
import { useTextClamped } from '@/utils/use-text-clamped';
import { StarRating } from '@/components/star-rating';
import { formatDistanceToNow } from 'date-fns';
import { ja } from 'date-fns/locale';
import { toggleUsefulAction, toggleEvaluationVisibilityAction, checkEvaluationInvisible } from '@/app/actions';
import { ThumbsUp, Flag, EyeOff, Eye, ChevronDown, ChevronUp } from 'lucide-react';
import { ReportForm } from '@/components/report-form';
import { ReportList } from '@/components/report-list';

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
  is_invisible?: boolean; // 評価が非表示かどうか
  show_reports?: boolean; // 通報一覧の表示/非表示
  isReviewExpanded?: boolean; // レビューが展開されているかどうか
  isTextClamped?: boolean; // テキストが切り詰められているかどうか
};

// コンポーネントのプロパティ
interface EvaluationListProps {
  evaluations: Evaluation[];
  isAdmin?: boolean; // 管理者かどうか
}

// 通報モーダルの状態
interface ReportModalState {
  isOpen: boolean;
  evaluationId: number | null;
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

import { getUserUsefulEvaluations, checkUserUseful } from '@/app/actions';

// レビュー一覧表示コンポーネント
export function EvaluationList({ evaluations: initialEvaluations, isAdmin = false }: EvaluationListProps) {
  // 評価一覧の状態
  const [evaluations, setEvaluations] = useState<Evaluation[]>(initialEvaluations);
  
  // 通報モーダルの状態
  const [reportModal, setReportModal] = useState<ReportModalState>({
    isOpen: false,
    evaluationId: null,
  });
  
  // 非表示状態の確認
  useEffect(() => {
    const checkInvisibleStatus = async () => {
      if (isAdmin && typeof window !== 'undefined') {
        const updatedEvaluations = await Promise.all(
          evaluations.map(async (evaluation) => {
            const isInvisible = await checkEvaluationInvisible(evaluation.code, evaluation.evaluator);
            return { ...evaluation, is_invisible: isInvisible };
          })
        );
        setEvaluations(updatedEvaluations);
      }
    };
    
    if (isAdmin) {
      checkInvisibleStatus();
    }
  }, [isAdmin, initialEvaluations]);
  
  // コンポーネントがマウントされたときに「役に立った」の状態を確認
  useEffect(() => {
    const checkUsefulStatus = async () => {
      if (typeof window !== 'undefined') {
        // 評価IDのリストを取得
        const evaluationIds = initialEvaluations.map(evaluation => evaluation.id);
        
        // ユーザーが「役に立った」を押した評価IDのセットを取得
        const usefulSet = await getUserUsefulEvaluations(evaluationIds);
        
        // 評価一覧を更新
        const updatedEvaluations = initialEvaluations.map(evaluation => ({
          ...evaluation,
          is_useful: usefulSet.has(evaluation.id),
          show_reports: false, // 初期状態では通報一覧を非表示に
          isReviewExpanded: false // 初期状態ではレビューを折りたたむ
        }));
        
        setEvaluations(updatedEvaluations);
      }
    };
    
    checkUsefulStatus();
  }, [initialEvaluations]);
  
  // レビューの展開/折りたたみを切り替えるハンドラ
  const toggleReviewExpand = (index: number) => {
    const newEvaluations = [...evaluations];
    newEvaluations[index].isReviewExpanded = !newEvaluations[index].isReviewExpanded;
    setEvaluations(newEvaluations);
  };
  
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
        
        
        setEvaluations(newEvaluations);
      }
    } catch (error) {
      console.error('役に立ったの操作中にエラーが発生しました', error);
    }
  };
  
  // 通報モーダルを閉じるハンドラ
  const handleCloseReportModal = () => {
    setReportModal({ isOpen: false, evaluationId: null });
  };
  
  // 通報送信後のハンドラ
  const handleReportSubmit = () => {
    // 通報が送信された後の処理
    // 必要に応じて評価一覧を更新するなどの処理を追加
  };
  
  // 非表示ボタンのクリックハンドラ
  const handleVisibilityToggle = async (evaluation: Evaluation, index: number) => {
    // 確認ダイアログを表示
    const message = evaluation.is_invisible
      ? 'この評価を表示に戻しますか？'
      : 'この評価を非表示にしますか？';
    
    if (!window.confirm(message)) {
      return;
    }
    
    try {
      // フォームデータを作成
      const formData = new FormData();
      formData.append('code', evaluation.code);
      formData.append('evaluator_id', evaluation.evaluator);
      
      // サーバーアクションを実行
      const result = await toggleEvaluationVisibilityAction(formData);
      
      if (result.success) {
        // 評価一覧を更新
        const newEvaluations = [...evaluations];
        const updatedEvaluation = newEvaluations[index];
        
        // 非表示状態を更新
        updatedEvaluation.is_invisible = !updatedEvaluation.is_invisible;
        
        setEvaluations(newEvaluations);
      }
    } catch (error) {
      console.error('評価の非表示/表示の切り替え中にエラーが発生しました', error);
    }
  };

  if (evaluations.length === 0) {
    return (
      <div className="text-center py-8 text-gray-500 dark:text-gray-400">
        まだレビューがありません。最初のレビューを投稿してみませんか？
      </div>
    );
  }

  // 通報一覧の表示/非表示を切り替えるハンドラ
  const handleToggleReports = (index: number) => {
    // 新しい配列を作成して状態を更新
    const newEvaluations = evaluations.map((evaluation, i) => {
      if (i === index) {
        return {
          ...evaluation,
          show_reports: !evaluation.show_reports
        };
      }
      return evaluation;
    });
    
    // 状態を更新
    setEvaluations(newEvaluations);
  };

  return (
    <div className="space-y-6">
      {evaluations.map((evaluation, index) => (
        <div 
          key={evaluation.id} 
          className={`bg-white dark:bg-gray-800 rounded-lg shadow-md p-6 ${evaluation.is_invisible ? 'opacity-70 border-2 border-red-300 dark:border-red-700' : ''}`}
        >
          {evaluation.is_invisible && (
            <div className="bg-red-100 dark:bg-red-900 text-red-800 dark:text-red-300 px-3 py-1 rounded-md mb-3 text-sm font-medium flex items-center">
              <EyeOff size={16} className="mr-2" />
              この評価は運営チームにより非表示に設定されています
            </div>
          )}
          <div className="flex flex-col sm:flex-row sm:justify-between sm:items-start gap-3 mb-4">
            <div>
              <div className="flex items-center gap-2 mb-1">
                <StarRating rating={evaluation.evaluation} />
                <span className="text-gray-500 dark:text-gray-400">
                  {evaluation.year}年度 {evaluation.quarter}
                </span>
              </div>
              <p className="text-sm text-gray-500 dark:text-gray-400">
                {formatEvaluatorName(evaluation)}さんが{formatDate(evaluation.created_at)}
              </p>
            </div>
            <div className="flex flex-wrap items-center gap-2">
              <span className="text-sm text-gray-500 dark:text-gray-400 mr-1">
                役に立った: {evaluation.useful_count}
              </span>
              <div className="flex flex-wrap gap-2">
                <button
                  className={`flex items-center gap-1 px-2 py-1 rounded-md ${
                    evaluation.is_useful 
                      ? 'text-white bg-blue-500 hover:bg-blue-600 dark:bg-blue-700 dark:hover:bg-blue-800' 
                      : 'text-gray-500 dark:text-gray-400 hover:text-blue-500 dark:hover:text-blue-300 hover:bg-gray-100 dark:hover:bg-gray-700'
                  }`}
                  onClick={() => handleUsefulClick(evaluation.id, index)}
                  aria-label="役に立った"
                >
                  <ThumbsUp size={16} />
                </button>
                <button
                  className="text-gray-500 dark:text-gray-400 hover:text-red-500 dark:hover:text-red-300 hover:bg-gray-100 dark:hover:bg-gray-700 px-2 py-1 rounded-md flex items-center"
                  onClick={() => setReportModal({ isOpen: true, evaluationId: evaluation.id })}
                  aria-label="通報"
                >
                  <Flag size={16} />
                </button>
                {isAdmin && (
                  <>
                    <button
                      className={`flex items-center gap-1 px-2 py-1 rounded-md ${
                        evaluation.is_invisible 
                          ? 'text-green-500 dark:text-green-400 hover:text-green-600 dark:hover:text-green-300 hover:bg-gray-100 dark:hover:bg-gray-700' 
                          : 'text-gray-500 dark:text-gray-400 hover:text-red-500 dark:hover:text-red-300 hover:bg-gray-100 dark:hover:bg-gray-700'
                      }`}
                      onClick={() => handleVisibilityToggle(evaluation, index)}
                      aria-label={evaluation.is_invisible ? '表示に戻す' : '非表示にする'}
                      title={evaluation.is_invisible ? '表示に戻す' : '非表示にする'}
                    >
                      {evaluation.is_invisible ? <Eye size={16} /> : <EyeOff size={16} />}
                    </button>
                    <button
                      className="text-gray-500 dark:text-gray-400 hover:text-blue-500 dark:hover:text-blue-300 hover:bg-gray-100 dark:hover:bg-gray-700 px-2 py-1 rounded-md flex items-center"
                      onClick={() => handleToggleReports(index)}
                      aria-label={evaluation.show_reports ? '通報一覧を閉じる' : '通報一覧を表示'}
                      title={evaluation.show_reports ? '通報一覧を閉じる' : '通報一覧を表示'}
                    >
                      {evaluation.show_reports ? <ChevronUp size={16} /> : <ChevronDown size={16} />}
                    </button>
                  </>
                )}
              </div>
            </div>
          </div>
          <div 
            ref={(el) => {
              // 要素がマウントされたときに、テキストが切り詰められているかどうかを確認
              if (el && !evaluation.isReviewExpanded) {
                const isTextClamped = el.scrollHeight > el.clientHeight;
                if (isTextClamped !== evaluation.isTextClamped) {
                  const newEvaluations = [...evaluations];
                  newEvaluations[index].isTextClamped = isTextClamped;
                  setEvaluations(newEvaluations);
                }
              }
            }}
            className={`whitespace-pre-line text-gray-700 dark:text-gray-300 ${evaluation.isReviewExpanded ? '' : 'line-clamp-3'}`}
          >
            {evaluation.review}
          </div>
          {(evaluation.isTextClamped || evaluation.isReviewExpanded) && (
            <button
              onClick={() => toggleReviewExpand(index)}
              className="text-blue-600 dark:text-blue-400 hover:text-blue-800 dark:hover:text-blue-300 hover:underline text-sm mt-1 focus:outline-none"
            >
              {evaluation.isReviewExpanded ? '閉じる' : '続きを読む'}
            </button>
          )}
          
          {/* 管理者向け通報一覧 */}
          {isAdmin && evaluation.show_reports && (
            <ReportList evaluationId={evaluation.id} />
          )}
        </div>
      ))}
      
      {/* 通報フォームモーダル */}
      {reportModal.isOpen && reportModal.evaluationId && (
        <ReportForm
          evaluationId={reportModal.evaluationId}
          onClose={handleCloseReportModal}
          onSubmit={handleReportSubmit}
        />
      )}
    </div>
  );
}
