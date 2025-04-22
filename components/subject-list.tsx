'use client';

import React, { useState, useEffect } from 'react';
import { Table, TableBody, TableCaption, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table';
import Link from 'next/link';
import { StarRating } from '@/components/star-rating';
import { useSearchParams } from 'next/navigation';

// 科目の型定義
type Subject = {
  code: string;
  name: string;
  faculties: any; // JSONBフィールド
  enrollment_grade: number;
  quarters: string[]; // クォーター情報を追加
};

// 評価統計の型定義
type EvaluationStats = {
  [code: string]: {
    count: number;
    average: number;
  };
};

// コンポーネントのプロパティ
interface SubjectListProps {
  allSubjects: {
    grade1: Subject[];
    grade2: Subject[];
    grade3: Subject[];
    grade4: Subject[];
  };
  evaluationStats: EvaluationStats;
}

// タブの型定義
type TabType = 1 | 2 | 3 | 4;

// 教員情報を表示するヘルパー関数
const formatFaculties = (faculties: any): string => {
  if (!faculties || !Array.isArray(faculties)) return '未設定';
  
  const facultyNames = faculties.map((faculty: any) => faculty.name).join(', ');
  
  // 20文字を超える場合は省略して表示
  if (facultyNames.length > 20) {
    return facultyNames.substring(0, 20) + '...';
  }
  
  return facultyNames;
};

// クォーター情報を表示するヘルパー関数
const formatQuarters = (quarters: any): string => {
  if (!quarters || !Array.isArray(quarters) || quarters.length === 0) return '未設定';
  
  return quarters.join(', ');
};

// クォーターの比較関数（クォーターの順序を定義）
const compareQuarters = (a: string[], b: string[]): number => {
  // クォーターがない場合は後ろに配置
  if (!a || !Array.isArray(a) || a.length === 0) return 1;
  if (!b || !Array.isArray(b) || b.length === 0) return -1;
  
  // 最初のクォーターで比較
  const quarterOrder: Record<string, number> = {
    '1Q': 1,
    '2Q': 2,
    '3Q': 3,
    '4Q': 4
  };
  
  const aFirstQuarter = a[0];
  const bFirstQuarter = b[0];
  
  const aOrder = quarterOrder[aFirstQuarter] || 999;
  const bOrder = quarterOrder[bFirstQuarter] || 999;
  
  return aOrder - bOrder;
};

// 科目をソートする関数
const sortSubjects = (subjects: Subject[]): Subject[] => {
  return [...subjects].sort((a, b) => {
    // まず年次でソート
    if (a.enrollment_grade !== b.enrollment_grade) {
      return a.enrollment_grade - b.enrollment_grade;
    }
    
    // 次にクォーターでソート
    const quarterCompare = compareQuarters(a.quarters, b.quarters);
    if (quarterCompare !== 0) {
      return quarterCompare;
    }
    
    // 最後にコードでソート
    return a.code.localeCompare(b.code);
  });
};

// 現在のタブに応じた科目リストを取得する関数
const getSubjectsByTab = (tab: TabType, allSubjects: SubjectListProps['allSubjects']): Subject[] => {
  let subjects;
  switch (tab) {
    case 1:
      subjects = allSubjects.grade1;
      break;
    case 2:
      subjects = allSubjects.grade2;
      break;
    case 3:
      subjects = allSubjects.grade3;
      break;
    case 4:
      subjects = allSubjects.grade4;
      break;
    default:
      subjects = allSubjects.grade1;
  }
  
  // 科目をソート: 年次 > クォーター > コード の順
  return sortSubjects(subjects);
};

// 科目一覧表示コンポーネント
export function SubjectList({ allSubjects, evaluationStats }: SubjectListProps) {
  const searchParams = useSearchParams();
  
  // URLからgradeパラメータを取得（存在しない場合は1を使用）
  const getInitialTab = (): TabType => {
    const gradeParam = searchParams.get('grade');
    if (gradeParam) {
      const grade = parseInt(gradeParam);
      if (grade >= 1 && grade <= 4) {
        return grade as TabType;
      }
    }
    return 1;
  };
  
  // 現在選択されているタブの状態
  const [activeTab, setActiveTab] = useState<TabType>(getInitialTab());
  
  // URLが変更されたときにタブを更新
  useEffect(() => {
    const newTab = getInitialTab();
    if (newTab !== activeTab) {
      setActiveTab(newTab);
    }
  }, [searchParams]); // activeTabを依存配列から削除して無限ループを防ぐ
  
  // 現在のタブに応じた科目リストを取得
  const currentSubjects = getSubjectsByTab(activeTab, allSubjects);
  
  // タブ切り替え関数
  const handleTabChange = (tab: TabType) => {
    // まずactiveTabを更新
    setActiveTab(tab);
    
    // URLを更新（現在のURLを置き換え、スクロール位置を維持）
    const params = new URLSearchParams(searchParams.toString());
    params.set('grade', tab.toString());
    
    // history.replaceStateを使用してURLを更新（スクロール位置を維持）
    const newUrl = `/dashboard?${params.toString()}`;
    window.history.replaceState({ ...window.history.state, as: newUrl, url: newUrl }, '', newUrl);
  };
  return (
    <div>
      {/* タブUI */}
      <div className="flex flex-wrap border-b mb-4">
        <button
          className={`px-2 sm:px-4 py-2 text-sm sm:text-base font-medium ${
            activeTab === 1
              ? 'border-b-2 border-blue-500 text-blue-600'
              : 'text-gray-500 hover:text-gray-700'
          }`}
          onClick={() => handleTabChange(1)}
        >
          1年次科目
        </button>
        <button
          className={`px-2 sm:px-4 py-2 text-sm sm:text-base font-medium ${
            activeTab === 2
              ? 'border-b-2 border-blue-500 text-blue-600'
              : 'text-gray-500 hover:text-gray-700'
          }`}
          onClick={() => handleTabChange(2)}
        >
          2年次科目
        </button>
        <button
          className={`px-2 sm:px-4 py-2 text-sm sm:text-base font-medium ${
            activeTab === 3
              ? 'border-b-2 border-blue-500 text-blue-600'
              : 'text-gray-500 hover:text-gray-700'
          }`}
          onClick={() => handleTabChange(3)}
        >
          3年次科目
        </button>
        <button
          className={`px-2 sm:px-4 py-2 text-sm sm:text-base font-medium ${
            activeTab === 4
              ? 'border-b-2 border-blue-500 text-blue-600'
              : 'text-gray-500 hover:text-gray-700'
          }`}
          onClick={() => handleTabChange(4)}
        >
          4年次科目
        </button>
      </div>
      
      {/* モバイル表示用のカードレイアウト */}
      <div className="block sm:hidden">
        {currentSubjects.length === 0 ? (
          <div className="text-center py-8 text-gray-500">
            表示する科目がありません
          </div>
        ) : (
          <div className="space-y-4">
            {currentSubjects.map((subject) => {
              // 評価統計情報を取得（存在しない場合はデフォルト値を使用）
              const stats = evaluationStats[subject.code] || { count: 0, average: 0 };
              
              return (
                <div key={subject.code} className="border rounded-lg p-3 bg-white">
                  <div className="font-medium">
                    <Link 
                      href={`/subject/${subject.code}`}
                      className="text-blue-600 hover:text-blue-800 hover:underline"
                    >
                      {subject.name}
                    </Link>
                  </div>
                  <div className="text-sm text-gray-600 mt-1">
                    教員: {formatFaculties(subject.faculties)}
                  </div>
                  <div className="text-sm text-gray-600 mt-1">
                    クォーター: {formatQuarters(subject.quarters)}
                  </div>
                  <div className="flex justify-between items-center mt-2">
                    <div className="text-sm text-gray-500">
                      {subject.enrollment_grade}年次
                    </div>
                    <div className="flex items-center gap-2">
                      {stats.count > 0 ? (
                        <>
                          <StarRating rating={stats.average} />
                          <span className="text-sm text-gray-500">({stats.count}件)</span>
                        </>
                      ) : (
                        <span className="text-sm text-gray-400">評価なし</span>
                      )}
                    </div>
                  </div>
                </div>
              );
            })}
          </div>
        )}
      </div>
      
      {/* デスクトップ表示用のテーブルレイアウト */}
      <div className="hidden sm:block">
        <Table>
          <TableCaption>科目一覧（想定年次順 {`>`} クォーター順 {`>`} 科目コード順）</TableCaption>
          <TableHeader>
            <TableRow>
              <TableHead className="w-[35%] min-w-[200px]">科目名</TableHead>
              <TableHead className="w-[25%] min-w-[120px]">教員</TableHead>
              <TableHead className="w-[10%] text-center">年次</TableHead>
              <TableHead className="w-[15%] min-w-[100px]">クォーター</TableHead>
              <TableHead className="w-[10%] text-center">評価</TableHead>
              <TableHead className="w-[5%] text-center">件数</TableHead>
            </TableRow>
          </TableHeader>
          <TableBody>
            {currentSubjects.length === 0 ? (
              <TableRow>
                <TableCell colSpan={5} className="text-center py-8">
                  表示する科目がありません
                </TableCell>
              </TableRow>
            ) : (
              currentSubjects.map((subject) => {
                // 評価統計情報を取得（存在しない場合はデフォルト値を使用）
                const stats = evaluationStats[subject.code] || { count: 0, average: 0 };
                
                return (
                  <TableRow key={subject.code}>
                    <TableCell className="font-medium whitespace-normal">
                      <Link 
                        href={`/subject/${subject.code}`}
                        className="text-blue-600 hover:text-blue-800 hover:underline"
                      >
                        {subject.name}
                      </Link>
                    </TableCell>
                    <TableCell className="whitespace-normal">{formatFaculties(subject.faculties)}</TableCell>
                    <TableCell className="text-center">{subject.enrollment_grade}</TableCell>
                    <TableCell className="whitespace-normal">{formatQuarters(subject.quarters)}</TableCell>
                    <TableCell className="text-center">
                      {stats.count > 0 ? (
                        <StarRating rating={stats.average} />
                      ) : (
                        <span className="text-gray-400">-</span>
                      )}
                    </TableCell>
                    <TableCell className="text-center">{stats.count}</TableCell>
                  </TableRow>
                );
              })
            )}
          </TableBody>
        </Table>
      </div>
    </div>
  );
}
