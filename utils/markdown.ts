import { unified } from 'unified';
import remarkParse from 'remark-parse';
import remarkGfm from 'remark-gfm';
import remarkRehype from 'remark-rehype';
import rehypeRaw from 'rehype-raw';
import rehypeStringify from 'rehype-stringify';

/**
 * Markdownテキストを完全なHTMLに変換する関数
 * GitHubフレーバーのマークダウンに対応しています
 */
export function markdownToHtml(markdown: string): string {
  if (!markdown) return '';

  // 数字付きリストとインデントされたリストの特殊なパターンを前処理
  let processedMarkdown = markdown;
  
  // 数字付きリストの後にインデントされたリストがある場合の処理
  // 例: 1. **タイトル**
  //     - アイテム1
  //     - アイテム2
  const numberListPattern = /^(\d+)\.\s+(.+?)$([\s\S]*?)(?=^(?:\d+\.|[^\s-])|$)/gm;
  processedMarkdown = processedMarkdown.replace(numberListPattern, (match, number, title, content) => {
    // インデントされたリスト項目を検出
    const indentedItems = content.match(/^\s*-\s+(.+?)$/gm);
    
    if (indentedItems) {
      // インデントされたリスト項目をHTMLに変換
      const itemsHtml = indentedItems
        .map((item: string) => {
          const itemContent = item.replace(/^\s*-\s+/, '');
          return `<li>${itemContent}</li>`;
        })
        .join('\n');
      
      // 数字付きリスト項目とインデントされたリスト項目を組み合わせる
      return `${number}. ${title}\n<ul>\n${itemsHtml}\n</ul>\n\n`;
    }
    
    return match;
  });

  // remarkとrehypeを使用してマークダウンをHTMLに変換
  const result = unified()
    .use(remarkParse) // マークダウンをパース
    .use(remarkGfm) // GitHubフレーバーのマークダウンに対応
    .use(remarkRehype, { allowDangerousHtml: true }) // remarkからrehypeへの変換
    .use(rehypeRaw) // HTMLをそのまま出力
    .use(rehypeStringify, { allowDangerousHtml: true }) // rehypeからHTMLへの変換
    .processSync(processedMarkdown);

  // 変換結果を文字列として返す
  const html = String(result);

  // TailwindCSSのクラスを適用
  let styledHtml = html
    // 見出し
    .replace(/<h2>/g, '<h2 class="text-xl font-semibold mt-6 mb-3">')
    .replace(/<h3>/g, '<h3 class="text-lg font-semibold mt-5 mb-2">')
    // 水平線
    .replace(/<hr>/g, '<hr class="my-4 border-t border-gray-300" />')
    // リスト
    .replace(/<ul>/g, '<ul class="my-2 list-disc pl-8">')
    .replace(/<ol>/g, '<ol class="my-2 pl-8" style="list-style-type: decimal; padding-left: 2rem;">')
    .replace(/<li>/g, '<li class="mb-1">')
    // 段落
    .replace(/<p>/g, '<p class="my-2">');

  return styledHtml;
}
