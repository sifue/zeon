# 環境のセットアップ方法

## ローカルの環境の準備
- Node.js 22.x 以上のインストール (nvm などを利用してもOK)

## ソースコードのチェックアウト

```sh
git clone git@github.com:sifue/zeon.git
cd zeon
npm install
```

## Supabase のセットアップ
- [Supabase](https://supabase.com/) のアカウントを作成し、プロジェクトを作成する。プロジェクト名は `zeon-dev` 等にすることを推奨。
- General > Project Settings から
  - Project ID を控えておく
- Project > Settings > Data API から
  - Project URL
  - Project API Keys の anon public の値を取得しおき、控えておく。
- Authentication > General user sign up > Sing In / Up > Auth Providers から
  - Email Auth を無効にする
  - Google Auth を有効にしたいが 、Google Cloud Console で OAuth クライアント ID を作成する必要がるため、一旦開きっぱなしにしておく。

## Google Cloud Console のセットアップ
- [Google Cloud Console](https://console.cloud.google.com/) にアクセスし、プロジェクトを作成する。
  - 左上の「プロジェクトを選択」の所から新しいプロジェクトを作成できる。
  - プロジェクト名は `zeon-dev` 等にすることを推奨。
- APIとサービス > OAuth同意画面 から開始。
  - アプリ名 `zeon-dev` 等にすることを推奨。
  - ユーザータイプは「外部」を選択。
  - ユーザーサポートのメールアドレスは開発用のメールアドレスを入力。
  - 対象は外部。
  - 連絡先は開発用のメールアドレスを入力。
- OAuthの概要から OAuthクライアントを作成
  - ウェブアプリケーションを選択。
  - 名前は `zeon-dev` 等にすることを推奨。
  - 承認済みの JavaScript 生成元
    - `http://localhost:3000` を追加。
  - 承認済みのリダイレクト URI
    - `https://{SupabaseのプロジェクトID}.supabase.co/auth/v1/callback` を追加。
  - 作成後、再度クライアントを開き、クライアントIDとクライアントシークレットを控えておく。
  - OAuth同意画面に戻り、認証済みドメインに `{SupabaseのプロジェクトID}.supabase.co` があることを確認する。

## 再度Supabase の設定
- Authentication > General user sign up > Sing In / Up > Auth Providers から
  - Google Auth の Client ID と Client Secret に、Google Cloud Console で控えた値を入力する。
  - Enable にして `Save` をクリックして保存する。
  - Callback URL (for OAuth) を控えておき、Google側に設定した値と同じか確認する。

## .local.env の作成
- プロジェクトのルートに `.local.env` という名前のファイルを作成し、以下の内容を記述する。

```env
NEXT_PUBLIC_SUPABASE_URL=[SupabaseプロジェクトのURL]
NEXT_PUBLIC_SUPABASE_ANON_KEY=[SupabaseプロジェクトのAnon Key]
NEXT_PUBLIC_GOOGLE_CLIENT_ID=[GoogleプロジェクトのClient ID]
```

## 起動してログインを確認

```sh
npm run dev
```

以上で、ローカル環境のセットアップは完了です。
Google Auth でログインできることを確認してください。

またログインすると Supabase のデータベースに `users` テーブルが作成され、ユーザー情報が保存されます。
そのデータが含まれていることを、Project > Authentication > Manage > Usersから確認してください。



