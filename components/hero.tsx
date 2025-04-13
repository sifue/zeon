import ZionLogo from './zeon-logo';

export default function Header() {
  return (
    <div className="flex flex-col gap-16 items-center">
      <div className="flex gap-8 justify-center items-center">
        <ZionLogo />
      </div>
      <h1 className="sr-only">ZEN大授業評価サイト ZEON (非公式)</h1>
      <p className="text-3xl lg:text-4xl !leading-tight mx-auto max-w-xl text-center">
        <span className="font-bold">ZEN大授業評価サイト</span>
        <br />
        <span className="text-2xl lg:text-3xl">ZEON (非公式)</span>
      </p>
      <p className="text-xl max-w-xl text-center">
        ZEN大学の授業を評価・レビューできるプラットフォーム。
        <br />
        ZEN大学のGoogleアカウントでログインして、授業評価を共有しましょう。
      </p>
      <div className="w-full p-[1px] bg-gradient-to-r from-transparent via-foreground/10 to-transparent my-8" />
    </div>
  );
}
