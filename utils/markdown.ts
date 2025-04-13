/**
 * Markdownテキストを簡易的にHTMLに変換する関数
 * 注: 完全なMarkdownパーサーではなく、基本的な変換のみを行います
 */
export function markdownToHtml(markdown: string): string {
  if (!markdown) return '';

  // 改行を処理
  let html = markdown.replace(/\n\n/g, '</p><p>');
  
  // 見出し (## 見出し -> <h2>見出し</h2>)
  html = html.replace(/^## (.+)$/gm, '<h2 class="text-xl font-semibold mt-6 mb-3">$1</h2>');
  html = html.replace(/^### (.+)$/gm, '<h3 class="text-lg font-semibold mt-5 mb-2">$1</h3>');
  
  // 水平線
  html = html.replace(/^---$/gm, '<hr class="my-4 border-t border-gray-300" />');
  
  // リスト項目 (- アイテム -> <li>アイテム</li>)
  html = html.replace(/^\s*- (.+)$/gm, '<li class="ml-5 list-disc">$1</li>');
  
  // 強調 (**テキスト** -> <strong>テキスト</strong>)
  html = html.replace(/\*\*(.+?)\*\*/g, '<strong>$1</strong>');
  
  // 段落で囲む
  html = '<p>' + html + '</p>';
  
  // 連続したリスト項目をulで囲む
  html = html.replace(/(<li[^>]*>.*?<\/li>)(?:\s*)(<li[^>]*>)/g, '$1<li-separator>$2');
  const parts = html.split('<li-separator>');
  html = parts[0];
  for (let i = 1; i < parts.length; i++) {
    if (parts[i-1].includes('<li') && parts[i].includes('<li')) {
      html += '</ul><ul class="my-2">' + parts[i];
    } else if (!parts[i-1].includes('<li') && parts[i].includes('<li')) {
      html += '</p><ul class="my-2">' + parts[i];
    } else if (parts[i-1].includes('<li') && !parts[i].includes('<li')) {
      html += '</ul><p>' + parts[i];
    } else {
      html += parts[i];
    }
  }
  
  // 重複した閉じタグを修正
  html = html.replace(/<\/p><p><\/ul>/g, '</ul>');
  html = html.replace(/<\/ul><p><\/p>/g, '</ul>');
  
  return html;
}
