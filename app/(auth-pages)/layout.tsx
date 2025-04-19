export default async function Layout({ children }: { children: React.ReactNode }) {
  return <div className="w-full max-w-7xl flex flex-col gap-8 sm:gap-12 items-center sm:items-start">{children}</div>;
}
