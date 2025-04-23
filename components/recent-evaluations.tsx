"use client";

import React, { useState, useEffect } from 'react';
import { StarRating } from '@/components/star-rating';
import { formatDistanceToNow } from 'date-fns';
import { ja } from 'date-fns/locale';
import { toggleUsefulAction, toggleEvaluationVisibilityAction } from '@/app/actions';
import { ThumbsUp, Flag, EyeOff, Eye } from 'lucide-react';
import { ReportForm } from '@/components/report-form';
import Link from 'next/link';

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
  subject_name: string;
  faculties: any;
  useful_count: number;
  is_useful?: boolean; // ユーザーが「役に立った」を押したかどうか
  is_invisible?: boolean; // 評価が非表示かどうか
  isExpanded?: boolean; // レビューが展開されているかどうか
};

// コンポーネントのプロパティ
interface RecentEvaluationsProps {
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

// 教員情報を表示するヘルパー関数
const formatFaculties = (faculties: any) => {
  if (!faculties || !Array.isArray(faculties)) return '未設定';
  
  const facultyNames = faculties.map((faculty: any) => faculty.name).join(', ');
  
  // 20文字を超える場合は省略して表示
  if (facultyNames.length > 20) {
    return facultyNames.substring(0, 20) + '...';
  }
  
  return facultyNames;
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

// 最近の評価一覧表示コンポーネント
export function RecentEvaluations({ evaluations: initialEvaluations, isAdmin = false }: RecentEvaluationsProps) {
  // 評価一覧の状態
  const [evaluations, setEvaluations] = useState<Evaluation[]>(
    initialEvaluations.map(evaluation => ({ ...evaluation, isExpanded: false }))
  );
  
  // 通報モーダルの状態
  const [reportModal, setReportModal] = useState<ReportModalState>({
    isOpen: false,
    evaluationId: null,
  });
  
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
          isExpanded: false // 初期状態ではレビューを折りたたむ
        }));
        
        setEvaluations(updatedEvaluations);
      }
    };
    
    checkUsefulStatus();
  }, [initialEvaluations]);
  
  // レビューの展開/折りたたみを切り替えるハンドラ
  const toggleReviewExpand = (index: number) => {
    const newEvaluations = [...evaluations];
    newEvaluations[index].isExpanded = !newEvaluations[index].isExpanded;
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
        まだレビューがありません。
      </div>
    );
  }

  return (
    <div className="space-y-4">
      {evaluations.map((evaluation, index) => (
        <div 
          key={evaluation.id} 
          className={`bg-white dark:bg-gray-800 rounded-lg shadow-md p-4 ${evaluation.is_invisible ? 'opacity-70 border-2 border-red-300 dark:border-red-700' : ''}`}
        >
          {evaluation.is_invisible && isAdmin && (
            <div className="bg-red-100 dark:bg-red-900 text-red-800 dark:text-red-300 px-3 py-1 rounded-md mb-3 text-sm font-medium flex items-center">
              <EyeOff size={16} className="mr-2" />
              この評価は非表示に設定されています
            </div>
          )}
          <div className="flex flex-col sm:flex-row sm:justify-between sm:items-start mb-3">
            <div>
              <Link 
                href={`/subject/${evaluation.code}`}
                className="text-blue-600 dark:text-blue-400 hover:text-blue-800 dark:hover:text-blue-300 hover:underline font-medium"
              >
                {evaluation.subject_name}
              </Link>
              <div className="text-sm text-gray-500 dark:text-gray-400 mt-1">
                教員: {formatFaculties(evaluation.faculties)}
              </div>
              <div className="flex items-center gap-2 mt-2">
                <StarRating rating={evaluation.evaluation} />
                <span className="text-gray-500 dark:text-gray-400 text-sm">
                  {evaluation.year}年度 {evaluation.quarter}
                </span>
              </div>
              <p className="text-sm text-gray-500 dark:text-gray-400 mt-1">
                {formatEvaluatorName(evaluation)}さんが{formatDate(evaluation.created_at)}
              </p>
            </div>
            <div className="flex items-center gap-2 mt-3 sm:mt-0">
              <span className="text-sm text-gray-500 dark:text-gray-400 mr-1">
                役に立った: {evaluation.useful_count}
              </span>
              <div className="flex flex-wrap gap-1">
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
                )}
              </div>
            </div>
          </div>
          <div className={`whitespace-pre-line text-gray-700 dark:text-gray-300 text-sm ${evaluation.isExpanded ? '' : 'line-clamp-3'}`}>
            {evaluation.review}
          </div>
          {evaluation.review.split('\n').length > 3 || evaluation.review.length > 150 ? (
            <button
              onClick={() => toggleReviewExpand(index)}
              className="text-blue-600 dark:text-blue-400 hover:text-blue-800 dark:hover:text-blue-300 hover:underline text-sm mt-1 focus:outline-none"
            >
              {evaluation.isExpanded ? '閉じる' : '続きを読む'}
            </button>
          ) : null}
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
