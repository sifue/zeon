import React from 'react';
import { Table, TableBody, TableCaption, TableCell, TableHead, TableHeader, TableRow } from '@/components/ui/table';

// 科目の型定義
type Subject = {
  code: string;
  name: string;
  faculties: any; // JSONBフィールド
  enrollment_grade: number;
  // その他の科目フィールド
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
  subjects: Subject[];
  evaluationStats: EvaluationStats;
}

// 星評価を表示するコンポーネント
const StarRating = ({ rating }: { rating: number }) => {
  return (
    <div className="flex items-center whitespace-nowrap">
      <span className="text-yellow-500 font-bold">{rating.toFixed(1)}</span>
      <span className="ml-1 text-yellow-500">★</span>
    </div>
  );
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

// 科目一覧表示コンポーネント
export function SubjectList({ subjects, evaluationStats }: SubjectListProps) {
  return (
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
        {subjects.map((subject) => {
          // 評価統計情報を取得（存在しない場合はデフォルト値を使用）
          const stats = evaluationStats[subject.code] || { count: 0, average: 0 };
          
          return (
            <TableRow key={subject.code}>
              <TableCell className="font-medium whitespace-normal">{subject.name}</TableCell>
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
        })}
      </TableBody>
    </Table>
  );
}
