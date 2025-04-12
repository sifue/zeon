import { createClient } from '@/utils/supabase/server';

export default async function Instruments() {
  const supabase = await createClient();
  
  // 認証状態を確認
  const { data: { user }, error: authError } = await supabase.auth.getUser();
  
  // 認証状態を表示
  console.log('Auth state:', user ? 'Authenticated' : 'Not authenticated');
  if (authError) {
    console.error('Auth error:', authError);
  }
  
  // RLSポリシーを確認するために、認証状態に関わらずデータを取得
  const { data: instruments, error } = await supabase.from("instruments").select();

  if (error) {
    console.error('Error fetching instruments:', error);
    return (
      <div>
        <h1>エラーが発生しました</h1>
        <p>詳細: {error.message}</p>
        <p>コード: {error.code}</p>
        <p>ヒント: {error.hint || 'なし'}</p>
        <p>詳細: {error.details || 'なし'}</p>
        <hr />
        <h2>認証状態</h2>
        <p>認証状態: {user ? '認証済み' : '未認証'}</p>
        {authError && (
          <div>
            <p>認証エラー: {authError.message}</p>
          </div>
        )}
      </div>
    );
  }

  if (!instruments || instruments.length === 0) {
    return (
      <div>
        <p>データがありません。</p>
        <hr />
        <h2>認証状態</h2>
        <p>認証状態: {user ? '認証済み' : '未認証'}</p>
        {authError && (
          <div>
            <p>認証エラー: {authError.message}</p>
          </div>
        )}
      </div>
    );
  }

  return (
    <div>
      <pre>{JSON.stringify(instruments, null, 2)}</pre>
      <hr />
      <h2>認証状態</h2>
      <p>認証状態: {user ? '認証済み' : '未認証'}</p>
      {authError && (
        <div>
          <p>認証エラー: {authError.message}</p>
        </div>
      )}
    </div>
  );
}
