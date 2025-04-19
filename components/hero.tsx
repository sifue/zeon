import ZionLogo from './zeon-logo';

export default function Header() {
  return (
    <div className="flex flex-col gap-8 sm:gap-16 items-center px-4">
      <div className="flex gap-8 justify-center items-center">
        <ZionLogo />
      </div>
      <h1 className="sr-only">ZEN大授業評価レビューサイト ZEON (非公式)</h1>
      <p className="text-2xl sm:text-3xl lg:text-4xl !leading-tight mx-auto max-w-xl text-center">
        <span className="font-bold">ZEN大授業評価レビューサイト</span>
        <br />
        <span className="text-xl sm:text-2xl lg:text-3xl">ZEON (非公式)</span>
      </p>
      <p className="text-lg sm:text-xl max-w-xl text-center">
        ZEN大学の授業を評価・レビューできるプラットフォーム。
        <br />
        ZEN大学のGoogleアカウントでログインして、半匿名で授業評価を共有しましょう。
        <br />
        <span className="text-xs sm:text-sm text-gray-500">※ユーザーIDから生成された固有の名前で表示されます</span>
      </p>
      <div className="w-full p-[1px] bg-gradient-to-r from-transparent via-foreground/10 to-transparent my-4 sm:my-8" />
    </div>
  );
}
