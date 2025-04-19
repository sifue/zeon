"use client";

import React, { useState, useEffect } from 'react';
import { formatDistanceToNow } from 'date-fns';
import { ja } from 'date-fns/locale';
import { getReportByEvaluationId } from '@/app/actions';

// 通報の型定義
type Report = {
  id: number;
  evaluation_id: number;
  reporter: string;
  reporter_name: string;
  is_irrelevant: boolean;
  is_inappropriate: boolean;
  is_fake: boolean;
  is_other: boolean;
  comment: string;
  created_at: string;
  isCommentExpanded?: boolean; // コメントが展開されているかどうか
};

// コンポーネントのプロパティ
interface ReportListProps {
  evaluationId: number;
}

// 日付をフォーマットするヘルパー関数
const formatDate = (dateString: string) => {
  try {
    const date = new Date(dateString);
    return formatDistanceToNow(date, { addSuffix: true, locale: ja });
  } catch (error) {
    return '日付不明';
  }
};

// 通報理由を表示するヘルパー関数
const formatReportReasons = (report: Report) => {
  const reasons: string[] = [];
  
  if (report.is_irrelevant) reasons.push('無関係');
  if (report.is_inappropriate) reasons.push('不適切');
  if (report.is_fake) reasons.push('フェイク');
  if (report.is_other) reasons.push('その他');
  
  return reasons.join('、');
};

// 通報一覧表示コンポーネント
export function ReportList({ evaluationId }: ReportListProps) {
  console.log(`ReportList コンポーネントがレンダリングされました: evaluationId=${evaluationId}`);
  
  // 通報一覧の状態
  const [reports, setReports] = useState<Report[]>([]);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);
  
  // コメントの展開/折りたたみを切り替えるハンドラ
  const toggleCommentExpand = (index: number) => {
    const newReports = [...reports];
    newReports[index].isCommentExpanded = !newReports[index].isCommentExpanded;
    setReports(newReports);
  };
  
  // コンポーネントがマウントされたときに通報を取得
  useEffect(() => {
    console.log(`ReportList useEffect が実行されました: evaluationId=${evaluationId}`);
    
    const fetchReport = async () => {
      try {
        setIsLoading(true);
        console.log(`通報を取得中... evaluationId: ${evaluationId}`);
        
        // 通報を取得
        const reportData = await getReportByEvaluationId(evaluationId);
        console.log('取得した通報:', reportData);
        
        // 状態を更新
        if (reportData) {
          setReports([{
            ...reportData,
            reporter_name: `通報者${reportData.reporter.substring(0, 4)}`,
            isCommentExpanded: false
          }]);
        } else {
          setReports([]);
        }
      } catch (err) {
        setError('通報の取得中にエラーが発生しました');
        console.error('通報の取得中にエラーが発生しました:', err);
      } finally {
        setIsLoading(false);
      }
    };
    
    fetchReport();
  }, [evaluationId]);
  
  console.log(`ReportList の現在の状態: isLoading=${isLoading}, error=${error}, reports.length=${reports.length}`);
  
  if (isLoading) {
    return (
      <div className="mt-4 p-4 bg-gray-50 dark:bg-gray-800 rounded-md border border-gray-200 dark:border-gray-700">
        <h4 className="text-sm font-semibold text-gray-700 dark:text-gray-300 mb-2">通報一覧</h4>
        <div className="text-sm text-gray-500 dark:text-gray-400">通報一覧を読み込み中...</div>
      </div>
    );
  }
  
  if (error) {
    return (
      <div className="mt-4 p-4 bg-gray-50 dark:bg-gray-800 rounded-md border border-gray-200 dark:border-gray-700">
        <h4 className="text-sm font-semibold text-gray-700 dark:text-gray-300 mb-2">通報一覧</h4>
        <div className="text-sm text-red-500 dark:text-red-400">{error}</div>
      </div>
    );
  }
  
  // 通報一覧が空の場合のメッセージを表示
  if (reports.length === 0) {
    return (
      <div className="mt-4 p-4 bg-gray-50 dark:bg-gray-800 rounded-md border border-gray-200 dark:border-gray-700">
        <h4 className="text-sm font-semibold text-gray-700 dark:text-gray-300 mb-2">通報一覧</h4>
        <div className="text-sm text-gray-500 dark:text-gray-400">この評価に対する通報はありません</div>
      </div>
    );
  }
  
  return (
    <div className="mt-4 p-4 bg-gray-50 dark:bg-gray-800 rounded-md border border-gray-200 dark:border-gray-700">
      <h4 className="text-sm font-semibold text-gray-700 dark:text-gray-300 mb-2">通報一覧</h4>
      <div className="space-y-3">
        {reports.map((report, index) => (
          <div key={report.id} className="bg-gray-50 dark:bg-gray-700 p-3 rounded-md border border-gray-200 dark:border-gray-600">
            <div className="flex flex-col sm:flex-row sm:justify-between sm:items-start gap-1 mb-2">
              <div className="text-sm font-medium dark:text-gray-300">
                {report.reporter_name}さん
              </div>
              <div className="text-xs text-gray-500 dark:text-gray-400">
                {formatDate(report.created_at)}
              </div>
            </div>
            <div className="text-sm mb-2 dark:text-gray-300">
              <span className="font-medium">理由:</span> {formatReportReasons(report)}
            </div>
            {report.comment && (
              <>
                <div className={`text-sm dark:text-gray-300 ${report.isCommentExpanded ? '' : 'line-clamp-3'}`}>
                  <span className="font-medium">コメント:</span> {report.comment}
                </div>
                {report.comment.split('\n').length > 3 || report.comment.length > 150 ? (
                  <button
                    onClick={() => toggleCommentExpand(index)}
                    className="text-blue-600 dark:text-blue-400 hover:text-blue-800 dark:hover:text-blue-300 hover:underline text-sm mt-1 focus:outline-none"
                  >
                    {report.isCommentExpanded ? '閉じる' : '続きを読む'}
                  </button>
                ) : null}
              </>
            )}
          </div>
        ))}
      </div>
    </div>
  );
}
