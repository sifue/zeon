"use client";

import React, { useState } from 'react';
import { StarRating } from '@/components/star-rating';
import { formatDistanceToNow } from 'date-fns';
import { ja } from 'date-fns/locale';
import { EyeOff } from 'lucide-react';
import Link from 'next/link';

// 通報の型定義
type Report = {
  id: number;
  evaluation_id: number;
  reporter: string;
  reporter_name: string;
  reporter_id: string;
  is_irrelevant: boolean;
  is_inappropriate: boolean;
  is_fake: boolean;
  is_other: boolean;
  comment: string;
  created_at: string;
  evaluator_name: string;
  evaluator_id: string;
  subject_name: string;
  faculties: any;
  evaluation: number;
  review: string;
  year: number;
  quarter: string;
  evaluation_created_at: string;
  useful_count: number;
  code: string; // 科目コード
  isCommentExpanded?: boolean; // コメントが展開されているかどうか
  isReviewExpanded?: boolean; // レビューが展開されているかどうか
};

// コンポーネントのプロパティ
interface RecentReportsProps {
  reports: Report[];
}

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

// 通報理由を表示するヘルパー関数
const formatReportReasons = (report: Report) => {
  const reasons = [];
  if (report.is_irrelevant) reasons.push('無関係');
  if (report.is_inappropriate) reasons.push('不適切');
  if (report.is_fake) reasons.push('フェイク');
  if (report.is_other) reasons.push('その他');
  
  return reasons.join(', ');
};

// 最近の通報一覧表示コンポーネント
export function RecentReports({ reports: initialReports }: RecentReportsProps) {
  // 通報一覧の状態
  const [reports, setReports] = useState<Report[]>(
    initialReports.map((report: Report) => ({ 
      ...report, 
      isCommentExpanded: false,
      isReviewExpanded: false 
    }))
  );
  
  // コメントの展開/折りたたみを切り替えるハンドラ
  const toggleCommentExpand = (index: number) => {
    const newReports = [...reports];
    newReports[index].isCommentExpanded = !newReports[index].isCommentExpanded;
    setReports(newReports);
  };
  
  // レビューの展開/折りたたみを切り替えるハンドラ
  const toggleReviewExpand = (index: number) => {
    const newReports = [...reports];
    newReports[index].isReviewExpanded = !newReports[index].isReviewExpanded;
    setReports(newReports);
  };
  if (reports.length === 0) {
    return (
      <div className="text-center py-8 text-gray-500 dark:text-gray-400">
        まだ通報がありません。
      </div>
    );
  }

  return (
    <div className="space-y-4">
      {reports.map((report: Report, index: number) => (
        <div 
          key={report.id} 
          className="bg-white dark:bg-gray-800 rounded-lg shadow-md p-4"
        >
          <div className="bg-red-50 dark:bg-red-900 text-red-800 dark:text-red-300 px-3 py-2 rounded-md mb-3 text-sm font-medium">
            <div className="flex flex-col sm:flex-row sm:justify-between sm:items-start">
              <div>
                <span className="font-semibold">通報理由:</span> {formatReportReasons(report)}
              </div>
              <div className="text-xs text-gray-500 dark:text-gray-400 mt-1 sm:mt-0">
                {formatDate(report.created_at)}
              </div>
            </div>
            <div className="mt-1">
              <span className="font-semibold">通報者:</span> {report.reporter_name} (ID: {report.reporter_id})
            </div>
            {report.comment && (
              <>
                <div className={`mt-1 whitespace-pre-line ${report.isCommentExpanded ? '' : 'line-clamp-3'}`}>
                  <span className="font-semibold">コメント:</span> {report.comment}
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
          
          <div className="border-t pt-3 mt-3">
            <div className="flex flex-col sm:flex-row sm:justify-between sm:items-start mb-3">
              <div>
                <Link 
                  href={`/subject/${report.code}`}
                  className="text-blue-600 dark:text-blue-400 hover:text-blue-800 dark:hover:text-blue-300 hover:underline font-medium"
                >
                  {report.subject_name}
                </Link>
                <div className="text-sm text-gray-500 dark:text-gray-400 mt-1">
                  教員: {formatFaculties(report.faculties)}
                </div>
                <div className="flex items-center gap-2 mt-2">
                  <StarRating rating={report.evaluation} />
                  <span className="text-gray-500 dark:text-gray-400 text-sm">
                    {report.year}年度 {report.quarter}
                  </span>
                </div>
                <p className="text-sm text-gray-500 dark:text-gray-400 mt-1">
                  {report.evaluator_name}さん (ID: {report.evaluator_id}) が{formatDate(report.evaluation_created_at)}
                </p>
              </div>
              <div className="flex items-center gap-2 mt-2 sm:mt-0">
                <span className="text-sm text-gray-500 dark:text-gray-400">
                  役に立った: {report.useful_count}
                </span>
              </div>
            </div>
            <div className={`whitespace-pre-line text-gray-700 dark:text-gray-300 text-sm ${report.isReviewExpanded ? '' : 'line-clamp-3'}`}>
              {report.review}
            </div>
            {report.review.split('\n').length > 3 || report.review.length > 150 ? (
              <button
                onClick={() => toggleReviewExpand(index)}
                className="text-blue-600 dark:text-blue-400 hover:text-blue-800 dark:hover:text-blue-300 hover:underline text-sm mt-1 focus:outline-none"
              >
                {report.isReviewExpanded ? '閉じる' : '続きを読む'}
              </button>
            ) : null}
          </div>
        </div>
      ))}
    </div>
  );
}
