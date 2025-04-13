// components/ZeonLogo.tsx
import React from 'react';

const ZeonLogo: React.FC = () => {
  return (
    <svg
      width="200"
      height="80"
      viewBox="0 0 200 80"
      fill="none"
      xmlns="http://www.w3.org/2000/svg"
      aria-label="ZEON logotype"
      role="img"
    >
      <defs>
        <linearGradient id="zeonGradient" x1="0" y1="0" x2="200" y2="0" gradientUnits="userSpaceOnUse">
          <stop offset="0%" stopColor="#3a7bd5" />
          <stop offset="100%" stopColor="#7856d6" />
        </linearGradient>
        <filter id="shadow" x="-2" y="-2" width="204" height="84">
          <feDropShadow dx="0" dy="2" stdDeviation="2" floodOpacity="0.3" />
        </filter>
      </defs>
      
      {/* 背景の装飾 */}
      <rect x="5" y="5" width="190" height="70" rx="10" fill="white" fillOpacity="0.1" />
      
      {/* ZEON テキスト - システムフォントを使用 */}
      <text
        x="100"
        y="55"
        fontFamily="Arial, Helvetica, sans-serif"
        fontSize="48"
        fontWeight="bold"
        textAnchor="middle"
        fill="url(#zeonGradient)"
        filter="url(#shadow)"
      >
        ZEON
      </text>
      
      {/* 下線装飾 */}
      <path d="M30 65 H170" stroke="url(#zeonGradient)" strokeWidth="3" strokeLinecap="round" />
    </svg>
  );
};

export default ZeonLogo;
