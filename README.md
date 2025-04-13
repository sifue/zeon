![ZEON logo](image/zeon-log.png)

<h1 align="center">ZEN大授業評価サイト ZEON (非公式)</h1>

<p align="center">
 ZEN大学のドメインのGoogleアカウントユーザーのみが利用できるクローズドなZEN大学の授業評価サイト<br>
 半匿名でレビューを投稿・閲覧できます
</p>

<p align="center">
  <a href="#サービス概要"><strong>サービス概要</strong></a> ·
  <a href="#主な機能"><strong>主な機能</strong></a> ·
  <a href="#開発状況"><strong>開発状況</strong></a> ·
  <a href="#ドキュメント"><strong>ドキュメント</strong></a>
</p>
<br/>

## サービス概要

ZEON（ジオン）は、ZEN university's classes Evaluation Online Network（Unofficial）の略称で、ZEN大学の授業評価を行うためのWebサービスです。Googleアカウント認証を用いて、ZEN大学のドメイン（zen.ac.jp）のGoogleアカウントユーザーのみが利用できるクローズドなサービスとなっています。

ユーザーは半匿名で授業評価を投稿できます。ユーザーIDから生成された固有の名前が表示されるため、完全な匿名ではありませんが、実名は表示されません。これにより、学生は自由に正直な評価を共有しながらも、一定の責任を持って投稿することができます。

## 主な機能

- **授業評価機能**
  - 科目ごとの評価（星の数：1〜5）
  - 授業を受けたクォーターの設定
  - 半匿名でのレビュー投稿、編集、削除
- **レビュー閲覧機能**
  - 科目ごとのレビュー一覧表示
  - 平均評価と評価数の表示
- **「役に立った」機能**
  - 他ユーザーのレビューに「役に立った」を付与
  - 「役に立った」数によるレビュー表示順の影響
- **通報機能**
  - 不適切なレビューの通報（無関係、不適切、フェイク、その他）
  - 通報理由とコメントの送信
- **管理者機能**
  - 通報の確認
  - レビューの非表示設定
  - ユーザー管理

## 開発状況

このプロジェクトは現在開発中です。基本的な機能は実装されていますが、一部の機能はまだ開発中または計画段階にあります。

## ドキュメント

詳細な情報は以下のドキュメントを参照してください：

- [仕様書](docs/README.md) - ZEONの詳細な仕様や内部設計について
- [セットアップガイド](docs/SETUP.md) - 開発環境のセットアップ方法
- [データベース構築](sql/README.md) - データベーススキーマとSQLスクリプトについて

## ライセンス
MITライセンスのもとで公開されています。  
著作権は、Soichiro Yoshimura (@sifue) に帰属します。  

---

# 以下はテンプレートの情報です

<h1 align="center">Next.js + Supabase + Google認証テンプレート</h1>

<p align="center">
 Next.jsとSupabaseを使用したGoogle認証（Google One Tap対応）のテンプレートプロジェクト
</p>

<p align="center">
  <a href="#機能"><strong>機能</strong></a> ·
  <a href="#デモ"><strong>デモ</strong></a> ·
  <a href="#vercelへのデプロイ"><strong>Vercelへのデプロイ</strong></a> ·
  <a href="#ローカルでの実行"><strong>ローカルでの実行</strong></a> ·
  <a href="#google認証の設定"><strong>Google認証の設定</strong></a>
</p>
<br/>

## 機能

このテンプレートは、[Next.js](https://nextjs.org)と[Supabase](https://supabase.com)を使用して、Google認証を実装したWebアプリケーションを素早く構築するためのものです。

- **Google認証**
  - Googleアカウントでのログイン/サインアップ
  - Google One Tap対応（ワンクリックでログイン）
  - Cross-Origin-Opener-Policy（COOP）ヘッダー設定済み
- **Supabase統合**
  - Row Level Security（RLS）ポリシー設定例
  - サーバーサイドとクライアントサイドの認証処理
- **Next.js App Router対応**
  - App Routerを使用したルーティング
  - サーバーコンポーネントとクライアントコンポーネント
  - ミドルウェアによる認証状態の管理
- **UI/UX**
  - [Tailwind CSS](https://tailwindcss.com)によるスタイリング
  - [shadcn/ui](https://ui.shadcn.com/)コンポーネント
  - レスポンシブデザイン

## デモ

デモサイトは[https://nextjs-quickstart-kappa.vercel.app/](https://nextjs-quickstart-kappa.vercel.app/)で確認できます。

## Vercelへのデプロイ

このプロジェクトをVercelにデプロイする場合、以下の手順で設定を行います。

1. GitHubにリポジトリをプッシュ
2. Vercelでプロジェクトを作成し、リポジトリを連携
3. 環境変数を設定
   ```
   NEXT_PUBLIC_SUPABASE_URL=[SupabaseプロジェクトのURL]
   NEXT_PUBLIC_SUPABASE_ANON_KEY=[SupabaseプロジェクトのAnon Key]
   NEXT_PUBLIC_GOOGLE_CLIENT_ID=[GoogleプロジェクトのClient ID]
   ```

デプロイ後、以下の追加設定が必要です：

```
# VercelにデプロイしてURLが分かった後に設定

# 1. GoogleのプロジェクトダッシュボードのOAuthクライアント設定
JavaScript生成元に以下を追加：
https://あなたのドメイン.vercel.app

# 2. OAuth同意画面の設定
承認済みドメインに以下を追加：
あなたのドメイン.vercel.app

# 3. Supabase側の設定
Auth > URL Configurationで、Site URLに以下を設定：
https://あなたのドメイン.vercel.app
```

## ローカルでの実行

1. まず、[Supabaseダッシュボード](https://database.new)でプロジェクトを作成します

2. このリポジトリをクローンします
   ```bash
   git clone https://github.com/sifue/nextjs-quickstart.git
   cd nextjs-quickstart
   ```

3. 依存関係をインストールします
   ```bash
   npm install
   ```

4. `.env.local`ファイルを作成し、以下の環境変数を設定します
   ```
   NEXT_PUBLIC_SUPABASE_URL=[SupabaseプロジェクトのURL]
   NEXT_PUBLIC_SUPABASE_ANON_KEY=[SupabaseプロジェクトのAnon Key]
   NEXT_PUBLIC_GOOGLE_CLIENT_ID=[GoogleプロジェクトのClient ID]
   ```

5. 開発サーバーを起動します
   ```bash
   npm run dev
   ```

   これで[localhost:3000](http://localhost:3000/)でアプリケーションが実行されます。

## Google認証の設定

### Googleプロジェクトの設定

1. [Google Cloud Console](https://console.cloud.google.com/)で新しいプロジェクトを作成
2. 「APIとサービス」>「認証情報」で「認証情報を作成」>「OAuthクライアントID」を選択
3. アプリケーションの種類で「ウェブアプリケーション」を選択
4. 承認済みのJavaScript生成元に以下を追加
   - `http://localhost`
   - `http://localhost:3000`
   - 本番環境の場合: `https://あなたのドメイン.vercel.app`
5. 承認済みのリダイレクトURIに以下を追加
   - `http://localhost:3000/auth/callback`
   - 本番環境の場合: `https://あなたのドメイン.vercel.app/auth/callback`
6. 「OAuth同意画面」で必要な情報を設定
   - アプリ名
   - ユーザーサポートメール
   - 承認済みドメイン（本番環境の場合: `あなたのドメイン.vercel.app`）
   - デベロッパーの連絡先情報

### Supabaseプロジェクトの設定

1. [Supabaseダッシュボード](https://app.supabase.com/)でプロジェクトを作成
2. 「Authentication」>「Providers」でGoogleプロバイダーを有効化
3. GoogleのClient IDとClient Secretを設定
4. 「URL Configuration」でSite URLとRedirect URLを設定
   - Site URL: `http://localhost:3000`（本番環境の場合: `https://あなたのドメイン.vercel.app`）
   - Redirect URL: `http://localhost:3000/auth/callback`（本番環境の場合: `https://あなたのドメイン.vercel.app/auth/callback`）

### RLSポリシーの設定例

```sql
-- テーブル作成例
create table instruments (
  id bigint primary key generated always as identity,
  name text not null
);

-- サンプルデータ挿入
insert into instruments (name)
values
  ('violin'),
  ('viola'),
  ('cello');

-- RLS有効化
alter table instruments enable row level security;

-- 未認証ユーザー向けポリシー
create policy "public can read instruments"
on public.instruments
for select to anon
using (true);

-- 認証済みユーザー向けポリシー
create policy "authenticated can read instruments"
on public.instruments
for select to authenticated
using (true);
```

---

# 以下は元のREADMEの日本語訳

<h1 align="center">Next.jsとSupabaseスターターキット</h1>

<p align="center">
 Next.jsとSupabaseでアプリを構築する最速の方法
</p>

## 機能

- [Next.js](https://nextjs.org)スタック全体で動作
  - App Router
  - Pages Router
  - Middleware
  - Client
  - Server
  - すべてシームレスに動作！
- supabase-ssr: Supabase認証をCookieを使用するように設定するパッケージ
- [Tailwind CSS](https://tailwindcss.com)によるスタイリング
- [shadcn/ui](https://ui.shadcn.com/)コンポーネント
- オプションで[SupabaseのVercel統合とVercelデプロイ](#vercelへのデプロイ)
  - 環境変数が自動的にVercelプロジェクトに割り当てられる

## デモ

完全に動作するデモは[demo-nextjs-with-supabase.vercel.app](https://demo-nextjs-with-supabase.vercel.app/)で確認できます。

## Vercelへのデプロイ

Vercelデプロイでは、Supabaseアカウントとプロジェクトの作成をガイドします。

Supabase統合をインストールすると、関連するすべての環境変数がプロジェクトに割り当てられ、デプロイが完全に機能するようになります。

## ローカルでクローンして実行

1. まず、[Supabaseダッシュボード](https://database.new)でSupabaseプロジェクトを作成する必要があります

2. Supabaseスターターテンプレートを使用してNext.jsアプリを作成します

   ```bash
   npx create-next-app --example with-supabase with-supabase-app
   ```

   ```bash
   yarn create next-app --example with-supabase with-supabase-app
   ```

   ```bash
   pnpm create next-app --example with-supabase with-supabase-app
   ```

3. `cd`コマンドでアプリのディレクトリに移動します

   ```bash
   cd with-supabase-app
   ```

4. `.env.example`を`.env.local`にリネームし、以下を更新します：

   ```
   NEXT_PUBLIC_SUPABASE_URL=[SUPABASEプロジェクトURLを挿入]
   NEXT_PUBLIC_SUPABASE_ANON_KEY=[SUPABASEプロジェクトAPI ANON KEYを挿入]
   ```

   `NEXT_PUBLIC_SUPABASE_URL`と`NEXT_PUBLIC_SUPABASE_ANON_KEY`は[SupabaseプロジェクトのAPI設定](https://app.supabase.com/project/_/settings/api)で確認できます

5. Next.jsのローカル開発サーバーを実行できます：

   ```bash
   npm run dev
   ```

   スターターキットが[localhost:3000](http://localhost:3000/)で実行されるはずです。

6. このテンプレートにはデフォルトのshadcn/uiスタイルが初期化されています。他のui.shadcnスタイルが必要な場合は、`components.json`を削除して[shadcn/uiを再インストール](https://ui.shadcn.com/docs/installation/next)してください。

> Supabaseもローカルで実行するには、[ローカル開発のドキュメント](https://supabase.com/docs/guides/getting-started/local-development)をチェックしてください。

## フィードバックと問題

フィードバックと問題は[Supabase GitHub org](https://github.com/supabase/supabase/issues/new/choose)に報告してください。

## その他のSupabase例

- [Next.jsサブスクリプション決済スターター](https://github.com/vercel/nextjs-subscription-payments)
- [CookieベースのAuthとNext.js 13 App Router（無料コース）](https://youtube.com/playlist?list=PL5S4mPUpp4OtMhpnp93EFSo42iQ40XjbF)
- [Supabase AuthとNext.js App Router](https://github.com/supabase/supabase/tree/master/examples/auth/nextjs)
