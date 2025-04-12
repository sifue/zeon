import { redirect } from "next/navigation";

// メールアドレス認証を使用しないため、パスワードリセットページは不要
// サインインページにリダイレクト
export default async function ForgotPassword() {
  redirect("/sign-in");
}
