import Hero from '@/components/hero';
import BanMessageToast from '@/components/ban-message-toast';

export default async function Home() {
  return (
    <>
      <BanMessageToast />
      <Hero />
      <main className="flex-1 flex flex-col gap-6 px-4">
        {/* メインコンテンツはここに追加されます */}
      </main>
    </>
  );
}
