import { EnvVarWarning } from '@/components/env-var-warning';
import HeaderAuth from '@/components/header-auth';
import { ThemeSwitcher } from '@/components/theme-switcher';
import { GoogleOneTap } from '@/components/google-one-tap';
import { hasEnvVars } from '@/utils/supabase/check-env-vars';
import { Geist } from 'next/font/google';
import { ThemeProvider } from 'next-themes';
import Link from 'next/link';
import ZeonLogo from '@/components/zeon-logo';
import FooterContactLink from '@/components/footer-contact-link';
import './globals.css';
import { createClient } from '@/utils/supabase/server';

const defaultUrl = process.env.VERCEL_URL
  ? `https://${process.env.VERCEL_URL}`
  : 'http://localhost:3000';

export const metadata = {
  metadataBase: new URL(defaultUrl),
  title: 'ZEN大授業評価サイト ZEON (非公式)',
  description: 'ZEN大学の授業を評価・レビューできるプラットフォーム',
};

const geistSans = Geist({
  display: 'swap',
  subsets: ['latin'],
});

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  return (
    <html lang="en" className={geistSans.className} suppressHydrationWarning>
      <head>
        <script src="https://accounts.google.com/gsi/client" async defer></script>
      </head>
      <body className="bg-background text-foreground">
        <ThemeProvider
          attribute="class"
          defaultTheme="system"
          enableSystem
          disableTransitionOnChange
        >
          <main className="min-h-screen flex flex-col items-center">
            <div className="flex-1 w-full flex flex-col gap-20 items-center">
              <nav className="w-full flex justify-center border-b border-b-foreground/10 h-16">
                <div className="w-full max-w-5xl flex justify-between items-center p-3 px-5 text-sm">
                  <div className="flex gap-5 items-center">
                    <Link href={'/'}>
                      <ZeonLogo />
                    </Link>
                    <div className="hidden md:block">
                      <div className="text-sm font-medium">ZEN大授業評価サイト</div>
                      <div className="text-xs">ZEON (非公式)</div>
                    </div>
                  </div>
                  {!hasEnvVars ? <EnvVarWarning /> : <HeaderAuth />}
                </div>
              </nav>
              <div className="flex flex-col gap-20 max-w-5xl p-5">{children}</div>

              <footer className="w-full flex flex-col items-center justify-center border-t mx-auto text-center text-xs gap-4 py-16">
                <div className="flex items-center gap-8">
                  <p>
                    Powered by ZEON運営チーム
                  </p>
                  <ThemeSwitcher />
                  <FooterContactLink />
                </div>
                <div className="flex gap-4 mt-2">
                  <Link href="/tos" className="text-xs hover:underline">利用規約</Link>
                  <Link href="/privacy-policy" className="text-xs hover:underline">プライバシーポリシー</Link>
                  <Link href="/community-guideline" className="text-xs hover:underline">コミュニティガイドライン</Link>
                </div>
              </footer>
            </div>
          </main>
        </ThemeProvider>
        <GoogleOneTap />
      </body>
    </html>
  );
}
