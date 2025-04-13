import { markdownToHtml } from '@/utils/markdown';
import DocumentPage from '@/components/document-page';
import fs from 'fs';
import path from 'path';

export default function CommunityGuidelinePage() {
  // Markdownファイルを読み込む
  const filePath = path.join(process.cwd(), 'docs', 'COMMUNITYGUIDELINE.md');
  const fileContent = fs.readFileSync(filePath, 'utf8');
  
  // HTMLに変換
  const htmlContent = markdownToHtml(fileContent);
  
  return (
    <DocumentPage 
      title="コミュニティガイドライン" 
      content={htmlContent} 
    />
  );
}
