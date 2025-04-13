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
      </defs>
      <g fill="url(#zeonGradient)">
        {/* Z */}
        <path d="M0 20 H50 L0 60 H50 V70 H0 V60 L50 20 H0 Z" />
        {/* E */}
        <path d="M60 20 H100 V30 H70 V40 H95 V50 H70 V60 H100 V70 H60 V20 Z" />
        {/* O with slash */}
        <path d="M110 45 A20 20 0 1 1 149.9 45 A20 20 0 1 1 110 45 Z M113 30 L147 65 L143 68 L110 33 Z" />
        {/* N */}
        <path d="M160 20 H170 L190 55 V20 H200 V70 H190 L170 35 V70 H160 V20 Z" />
      </g>
    </svg>
  );
};

export default ZeonLogo;
