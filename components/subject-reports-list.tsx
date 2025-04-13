"use client";

import React, { useState, useEffect } from 'react';
import { formatDistanceToNow } from 'date-fns';
import { ja } from 'date-fns/locale';
import { getReportsBySubjectCode } from '@/app/actions';

// 通報の型定義
type Report = {
  id: number;
  evaluation_id: number;
  reporter: string;
  reporter_name: string;
  evaluator_name: string;
  evaluations: {
    id: number;
    evaluator: string;
  };
  is_irrelevant: boolean;
  is_inappropriate: boolean;
  is_fake: boolean;
  is_other: boolean;
  comment: string;
  created_at: string;
};

// コンポーネントのプロパティ
interface SubjectReportsListProps {
  subjectCode: string;
  isAdmin: boolean;
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

// 科目の通報一覧表示コンポーネント
export function SubjectReportsList({ subjectCode, isAdmin }: SubjectReportsListProps) {
  // 通報一覧の状態
  const [reports, setReports] = useState<Report[]>([]);
  const [isLoading, setIsLoading] = useState<boolean>(true);
  const [error, setError] = useState<string | null>(null);
  
  // コンポーネントがマウントされたときに通報一覧を取得
  useEffect(() => {
    // 管理者でない場合は何も表示しない
    if (!isAdmin) {
      setIsLoading(false);
      return;
    }
    
    const fetchReports = async () => {
      try {
        setIsLoading(true);
        
        // 通報一覧を取得
        const reportData = await getReportsBySubjectCode(subjectCode);
        setReports(reportData);
      } catch (err) {
        setError('通報一覧の取得中にエラーが発生しました');
        console.error('通報一覧の取得中にエラーが発生しました:', err);
      } finally {
        setIsLoading(false);
      }
    };
    
    fetchReports();
  }, [subjectCode, isAdmin]);
  
  // 管理者でない場合は何も表示しない
  if (!isAdmin) {
    return null;
  }
  
  if (isLoading) {
    return (
      <div className="mt-6 mb-6">
        <h2 className="text-2xl font-semibold mb-4">通報一覧</h2>
        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="text-center py-4 text-gray-500">通報一覧を読み込み中...</div>
        </div>
      </div>
    );
  }
  
  if (error) {
    return (
      <div className="mt-6 mb-6">
        <h2 className="text-2xl font-semibold mb-4">通報一覧</h2>
        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="text-center py-4 text-red-500">{error}</div>
        </div>
      </div>
    );
  }
  
  // 通報一覧が空の場合のメッセージを表示
  if (reports.length === 0) {
    return (
      <div className="mt-6 mb-6">
        <h2 className="text-2xl font-semibold mb-4">通報一覧</h2>
        <div className="bg-white rounded-lg shadow-md p-6">
          <div className="text-center py-4 text-gray-500">この科目に対する通報はありません</div>
        </div>
      </div>
    );
  }
  
  return (
    <div className="mt-6 mb-6">
      <h2 className="text-2xl font-semibold mb-4">通報一覧</h2>
      <div className="bg-white rounded-lg shadow-md p-6">
        <div className="space-y-4">
          {reports.map((report) => (
            <div key={report.id} className="border-b border-gray-200 pb-4 last:border-b-0 last:pb-0">
              <div className="flex justify-between items-start mb-2">
                <div>
                  <div className="text-sm font-medium">
                    対象評価者: {report.evaluator_name}
                  </div>
                  <div className="text-xs text-gray-500">
                    ユーザーID: {report.evaluations.evaluator}
                  </div>
                </div>
                <div className="text-xs text-gray-500">
                  {formatDate(report.created_at)}
                </div>
              </div>
              <div className="text-sm mb-1">
                <span className="font-medium">通報者:</span> {report.reporter_name}
              </div>
              <div className="text-sm mb-1">
                <span className="font-medium">理由:</span> {formatReportReasons(report)}
              </div>
              {report.comment && (
                <div className="text-sm">
                  <span className="font-medium">コメント:</span> {report.comment}
                </div>
              )}
            </div>
          ))}
        </div>
      </div>
    </div>
  );
}
