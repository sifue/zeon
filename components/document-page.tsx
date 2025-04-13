import React from 'react';

export default function DocumentPage({ 
  title, 
  content 
}: { 
  title: string, 
  content: string 
}) {
  return (
    <div className="w-full max-w-3xl mx-auto py-8">
      <h1 className="text-2xl font-bold mb-6">{title}</h1>
      <div className="prose prose-sm max-w-none" 
           dangerouslySetInnerHTML={{ __html: content }} />
    </div>
  );
}
