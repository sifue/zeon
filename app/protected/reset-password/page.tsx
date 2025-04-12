import { redirect } from "next/navigation";

// メールアドレス認証を使用しないため、パスワードリセットページは不要
// 保護されたページにリダイレクト
export default async function ResetPassword() {
  redirect("/protected");
}
