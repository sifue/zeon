#!/usr/bin/env node

/**
 * ZEONデータベース構築スクリプト - 科目データ生成ツール
 * このスクリプトは、ZEN大学シラバスAPI (https://api.syllabus.zen.ac.jp/) から科目の詳細情報を取得し、
 * SQLに変換するためのものです。
 * 
 * Node.js 22以降で動作します。
 */

import fs from 'node:fs/promises';
import path from 'node:path';
import { setTimeout } from 'node:timers/promises';

// 出力ディレクトリ
const OUTPUT_DIR = 'sql';

/**
 * APIのレスポンス
 */
class ApiResponse {
  totalCount;
  pageSize;
  page;
  totalPages;
  relatedTags;
  subjects;
}

/**
 * 科目
 */
class Subject {
  code;
  name;
  description;
  thumbnailUrl;
  openingYear;
  faculty;
  metadata;
  subjectCategoryIds;
}

/**
 * fetchAllPages に渡すオプション引数
 */
class FetchOptions {
  freeword;         // フリーワード検索
  enrollment_grade; // 想定年次
}

/**
 * クエリ付きのURLを生成するヘルパー関数
 */
function createUrl(page, options) {
  // 基本のクエリパラメータ
  let url = `https://api.syllabus.zen.ac.jp/search?page=${page}`;

  // フリーワードが指定されていれば追加
  if (options?.freeword) {
    url += `&freeword=${encodeURIComponent(options.freeword)}`;
  }

  // 想定年次が指定されていれば追加
  if (options?.enrollment_grade) {
    url += `&enrollment_grade=${encodeURIComponent(options.enrollment_grade)}`;
  }

  return url;
}

/**
 * 全ページを取得し、subjects を結合して返す関数
 */
async function fetchAllPages(options) {
  console.log('APIからデータを取得中...');
  
  // まず最初のページを取得
  const firstPageUrl = createUrl(0, options);
  console.log(`URL: ${firstPageUrl}`);
  
  const firstResponse = await fetch(firstPageUrl);
  if (!firstResponse.ok) {
    throw new Error(`APIリクエストに失敗しました: ${firstResponse.status} ${firstResponse.statusText}`);
  }

  const firstData = await firstResponse.json();
  const allSubjects = [...firstData.subjects];
  const { totalPages, totalCount, pageSize, relatedTags } = firstData;

  console.log(`全${totalPages}ページ中、1ページ目を取得しました（${allSubjects.length}件）`);

  // 2ページ目以降を順次取得 (page=1 ~ totalPages-1)
  for (let page = 1; page < totalPages; page++) {
    const url = createUrl(page, options);
    const response = await fetch(url);

    if (!response.ok) {
      throw new Error(`APIリクエストに失敗しました: ${response.status} ${response.statusText}`);
    }

    const data = await response.json();
    allSubjects.push(...data.subjects);
    
    console.log(`全${totalPages}ページ中、${page + 1}ページ目を取得しました（累計${allSubjects.length}件）`);
    
    // APIに負荷をかけないよう少し待機
    await setTimeout(500);
  }

  // 単一のオブジェクトとしてまとめる
  const mergedData = {
    totalCount,
    pageSize,
    page: 0, // 全ページのデータを結合した結果なので、page=0 とする
    totalPages,
    relatedTags,
    subjects: allSubjects,
  };

  return mergedData;
}

/**
 * 科目カテゴリーIDから分類名を取得する関数
 */
function getCategoryName(categoryIds) {
  if (!categoryIds || categoryIds.length === 0) {
    return "未分類";
  }

  const categoryMap = {
    "basic": "導入科目",
    "applied_informatics": "基盤リテラシー科目 (情報)",
    "mathematical_sciences": "基盤リテラシー科目 (数理)",
    "multilingual_information_understanding": "多言語情報理解科目",
    "culture_and_thoughts": "世界理解科目 (文化・思想)",
    "society_and_networks": "世界理解科目 (社会・ネットワーク)",
    "economy_and_markets": "世界理解科目 (経済・マーケット)",
    "digital_industr": "世界理解科目 (デジタル産業)",
    "social_connection": "社会接続科目",
    "graduation_project": "卒業プロジェクト科目",
    "free": "自由科目"
  };

  // カテゴリーIDに対応する分類名を取得
  const categoryNames = categoryIds.map(id => categoryMap[id] || "未分類");
  
  // 重複を排除
  return [...new Set(categoryNames)];
}

/**
 * 科目の詳細情報をSQLに変換する
 */
function convertToSql(subject) {
  if (!subject) {
    return '';
  }
  
  // 必要なフィールドを取得
  const code = subject.code || '';
  const name = subject.name || '';
  const description = (subject.description || '').replace(/'/g, "''");  // SQLインジェクション対策
  const openingYear = parseInt(subject.openingYear || '2025', 10);
  
  // 教員情報をJSON形式に変換
  const faculties = JSON.stringify(
    (subject.faculty || []).map(f => ({
      name: f.name,
      role: f.title
    }))
  );
  
  const enrollmentGrade = parseInt(subject.metadata.enrollmentGrade || '1', 10);
  const teachingMethod = subject.metadata.teachingMethod || '';
  const subjectRequirement = subject.metadata.subjectRequirement || '';
  const credit = parseInt(subject.metadata.credit || '2', 10);
  const quarters = JSON.stringify(subject.metadata.quarters || []);
  const objective = (subject.metadata.objective || '').replace(/'/g, "''");  // SQLインジェクション対策
  const evaluationSystem = subject.metadata.evaluationSystem || '';
  const specialNotes = (subject.metadata.specialNotes || '').replace(/'/g, "''");  // SQLインジェクション対策
  const subjectCategories = JSON.stringify(getCategoryName(subject.subjectCategoryIds || []));
  
  const sql = `
-- ${name}
INSERT INTO public.subjects (
  code, name, description, opening_year, faculties, enrollment_grade,
  teaching_method, subject_requirement, credit, quarters, objective,
  evaluation_system, special_notes, subject_categories, updated_at
) VALUES (
  '${code}',
  '${name}',
  '${description}',
  ${openingYear},
  '${faculties}',
  ${enrollmentGrade},
  '${teachingMethod}',
  '${subjectRequirement}',
  ${credit},
  '${quarters}',
  '${objective}',
  '${evaluationSystem}',
  '${specialNotes}',
  '${subjectCategories}',
  now()
) ON CONFLICT (code) DO UPDATE SET
  name = EXCLUDED.name,
  description = EXCLUDED.description,
  opening_year = EXCLUDED.opening_year,
  faculties = EXCLUDED.faculties,
  enrollment_grade = EXCLUDED.enrollment_grade,
  teaching_method = EXCLUDED.teaching_method,
  subject_requirement = EXCLUDED.subject_requirement,
  credit = EXCLUDED.credit,
  quarters = EXCLUDED.quarters,
  objective = EXCLUDED.objective,
  evaluation_system = EXCLUDED.evaluation_system,
  special_notes = EXCLUDED.special_notes,
  subject_categories = EXCLUDED.subject_categories,
  updated_at = EXCLUDED.updated_at;
`;
  return sql;
}

/**
 * メイン処理
 */
async function main() {
  try {
    console.log('ZEONデータベース構築スクリプト - 科目データ生成ツール');
    console.log('=====================================================');
    
    // 出力ディレクトリが存在しない場合は作成
    try {
      await fs.access(OUTPUT_DIR);
    } catch (error) {
      await fs.mkdir(OUTPUT_DIR, { recursive: true });
    }
    
    // 全科目データを取得
    const apiResponse = await fetchAllPages();
    
    if (!apiResponse.subjects || apiResponse.subjects.length === 0) {
      console.log('科目データが見つかりませんでした。処理を終了します。');
      return;
    }
    
    console.log(`${apiResponse.subjects.length}件の科目が見つかりました。`);
    
    // 「特記事項参照」と書かれた科目を除外
    const excludeKeywords = ['特記事項参照(2025年度)', '特記事項参照(2026年度)', '特記事項参照(2027年度)', '特記事項参照(2028年度)'];
    const filteredSubjects = apiResponse.subjects.filter(subject => 
      !excludeKeywords.some(keyword => (subject.name || '').includes(keyword))
    );
    
    console.log(`${filteredSubjects.length}件の科目を処理します（「特記事項参照」と書かれた科目を除外）。`);
    
    // 科目を年次ごとに分割
    const subjectsByGrade = {};
    for (const subject of filteredSubjects) {
      const grade = parseInt(subject.metadata.enrollmentGrade || '1', 10);
      if (!subjectsByGrade[grade]) {
        subjectsByGrade[grade] = [];
      }
      subjectsByGrade[grade].push(subject);
    }
    
    // 年次ごとにSQLファイルを作成
    for (const [grade, subjects] of Object.entries(subjectsByGrade)) {
      const outputFile = path.join(OUTPUT_DIR, `03_initial_data_subjects_grade${grade}.sql`);
      
      console.log(`${grade}年次の科目データを${outputFile}に出力します（${subjects.length}件）。`);
      
      let sqlContent = `-- ZEONデータベース構築スクリプト\n`;
      sqlContent += `-- 03_initial_data_subjects_grade${grade}.sql\n`;
      sqlContent += `-- ${grade}年次の科目データの登録\n\n`;
      
      // 各科目の詳細情報をSQLに変換
      for (let i = 0; i < subjects.length; i++) {
        const subject = subjects[i];
        const sql = convertToSql(subject);
        sqlContent += sql + '\n';
        console.log(`  [${i+1}/${subjects.length}] ${subject.name} - 処理完了`);
      }
      
      // ファイルに書き込み
      await fs.writeFile(outputFile, sqlContent, 'utf8');
    }
    
    console.log('処理が完了しました。');
  } catch (error) {
    console.error(`エラー: ${error.message}`);
    process.exit(1);
  }
}

// スクリプトの実行
main();
