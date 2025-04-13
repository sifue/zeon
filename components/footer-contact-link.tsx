import Link from 'next/link';
import { createClient } from '@/utils/supabase/server';

export default async function FooterContactLink() {
  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();
  
  if (!user) {
    return null;
  }
  
  return (
    <Link href="mailto:soichiro_yoshimura@zen.ac.jp" className="text-xs hover:underline">
      お問い合わせ
    </Link>
  );
}
