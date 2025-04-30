"use client";

import { useState, useEffect, RefObject } from 'react';

/**
 * テキストが切り詰められているかどうかを検出するカスタムフック
 * @param ref テキスト要素への参照
 * @param dependencies 依存配列（テキストの内容が変更されたときに再評価するため）
 * @returns テキストが切り詰められているかどうか
 */
export function useTextClamped(ref: RefObject<HTMLElement>, dependencies: any[] = []): boolean {
  const [isClamped, setIsClamped] = useState<boolean>(false);
  
  useEffect(() => {
    const checkIfClamped = () => {
      if (ref.current) {
        const element = ref.current;
        // 要素の実際の高さとスクロール可能な高さを比較
        const isTextClamped = element.scrollHeight > element.clientHeight;
        setIsClamped(isTextClamped);
      }
    };
    
    // 初期チェック
    checkIfClamped();
    
    // リサイズ時にも再チェック
    window.addEventListener('resize', checkIfClamped);
    
    return () => {
      window.removeEventListener('resize', checkIfClamped);
    };
  }, [ref, ...dependencies]);
  
  return isClamped;
}
