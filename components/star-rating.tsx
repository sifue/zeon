import React from 'react';

interface StarRatingProps {
  rating: number;
  size?: 'sm' | 'md' | 'lg';
}

export function StarRating({ rating, size = 'md' }: StarRatingProps) {
  // サイズに応じたクラス名を設定
  const sizeClasses = {
    sm: 'text-sm',
    md: 'text-base',
    lg: 'text-lg',
  };
  
  return (
    <div className={`flex items-center ${sizeClasses[size]}`}>
      <span className="text-yellow-500 font-bold">{rating.toFixed(1)}</span>
      <span className="ml-1 text-yellow-500">★</span>
    </div>
  );
}
