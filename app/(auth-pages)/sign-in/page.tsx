import { FormMessage, Message } from "@/components/form-message";
import Link from "next/link";
import { GoogleAuthButton } from "@/components/google-auth-button";

export default async function Login(props: { searchParams: Promise<Message> }) {
  const searchParams = await props.searchParams;
  return (
    <form className="flex-1 flex flex-col min-w-64">
      <h1 className="text-2xl font-medium">Sign in</h1>
      <p className="text-sm text-foreground">
        Don't have an account?{" "}
        <Link className="text-foreground font-medium underline" href="/sign-up">
          Sign up
        </Link>
      </p>
      <div className="flex flex-col gap-2 mt-8">
        <GoogleAuthButton />
        <FormMessage message={searchParams} />
      </div>
    </form>
  );
}
