import { createClient } from '@/utils/supabase/server';
import FooterContactDialog from './footer-contact-dialog';

export default async function FooterContactLink() {
  const supabase = await createClient();
  const { data: { user } } = await supabase.auth.getUser();
  
  if (!user) {
    return null;
  }
  
  return <FooterContactDialog />;
}
