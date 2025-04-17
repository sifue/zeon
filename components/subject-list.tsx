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

// 現在のタブに応じた科目リストを取得する関数
const getSubjectsByTab = (tab: TabType, allSubjects: SubjectListProps['allSubjects']): Subject[] => {
  switch (tab) {
    case 1:
      return allSubjects.grade1;
    case 2:
      return allSubjects.grade2;
    case 3:
      return allSubjects.grade3;
    case 4:
      return allSubjects.grade4;
    default:
      return allSubjects.grade1;
  }
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
      <div className="flex border-b mb-4">
        <button
          className={`px-4 py-2 font-medium ${
            activeTab === 1
              ? 'border-b-2 border-blue-500 text-blue-600'
              : 'text-gray-500 hover:text-gray-700'
          }`}
          onClick={() => handleTabChange(1)}
        >
          1年次科目
        </button>
        <button
          className={`px-4 py-2 font-medium ${
            activeTab === 2
              ? 'border-b-2 border-blue-500 text-blue-600'
              : 'text-gray-500 hover:text-gray-700'
          }`}
          onClick={() => handleTabChange(2)}
        >
          2年次科目
        </button>
        <button
          className={`px-4 py-2 font-medium ${
            activeTab === 3
              ? 'border-b-2 border-blue-500 text-blue-600'
              : 'text-gray-500 hover:text-gray-700'
          }`}
          onClick={() => handleTabChange(3)}
        >
          3年次科目
        </button>
        <button
          className={`px-4 py-2 font-medium ${
            activeTab === 4
              ? 'border-b-2 border-blue-500 text-blue-600'
              : 'text-gray-500 hover:text-gray-700'
          }`}
          onClick={() => handleTabChange(4)}
        >
          4年次科目
        </button>
      </div>
      
      {/* 科目テーブル */}
      <Table>
        <TableCaption>科目一覧（想定年次順 {`>`} 科目コード順）</TableCaption>
        <TableHeader>
          <TableRow>
            <TableHead className="w-[40%] min-w-[250px]">科目名</TableHead>
            <TableHead className="w-[30%] min-w-[150px]">教員</TableHead>
            <TableHead className="w-[10%] text-center">年次</TableHead>
            <TableHead className="w-[10%] text-center">評価</TableHead>
            <TableHead className="w-[10%] text-center">件数</TableHead>
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
  );
}
