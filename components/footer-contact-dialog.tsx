'use client';

import Link from 'next/link';
import {
  Dialog,
  DialogContent,
  DialogDescription,
  DialogHeader,
  DialogTitle,
  DialogTrigger,
} from '@/components/ui/dialog';

export default function FooterContactDialog() {
  return (
    <Dialog>
      <DialogTrigger asChild>
        <button className="text-xs hover:underline">
          お問い合わせ
        </button>
      </DialogTrigger>
      <DialogContent className="sm:max-w-md">
        <DialogHeader>
          <DialogTitle>お問い合わせ</DialogTitle>
          <DialogDescription>
            ZEN大学のSlackの{' '}
            <Link 
              href="https://zen-student.slack.com/archives/C08PHFSCMS4" 
              target="_blank" 
              rel="noopener noreferrer"
              className="text-primary underline hover:text-primary/90"
            >
              #授業評価レビューサイトzeon
            </Link>{' '}
            チャンネルにて @sifue までお問い合わせください。
          </DialogDescription>
        </DialogHeader>
      </DialogContent>
    </Dialog>
  );
}
