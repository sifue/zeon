export default function ServiceTerminationNotice() {
  return (
    <div className="w-full bg-red-50 border-2 border-red-300 rounded-lg p-4 my-4 text-red-900">
      <h2 className="text-xl font-bold mb-2">【ZEON サービス終了のお知らせ】</h2>
      <p className="mb-4">
        ZEN 大学授業レビューサイト ZEON (非公式)は、運営者が対象授業を開講しているため中立性を確保できないと判断し、
        2025 年 5 月 23 日（金）18:00（JST）をもってサービスを終了します。
      </p>
      
      <ol className="list-decimal pl-5 mb-4 space-y-2">
        <li>
          終了日までにご自身の投稿データ（レビュー、評価値、通報など）が必要な場合は、マイページから該当内容を画面表示し、
          コピーアンドペーストで保存してください。終了後はサーバー上のデータを削除しますので、復元はできません。
        </li>
        <li>
          ZEON はオープンソースソフトウェアとして https://github.com/sifue/zeon で公開されています。
          関心のある方はご参照ください。
        </li>
      </ol>
      
      <p className="mb-2">
        短い間ではありましたが、ご利用くださいました皆さまに感謝いたします。ご了承のほどよろしくお願い申し上げます。
      </p>
      
      <p className="text-sm">
        ZEON 運営チーム<br />
        問い合わせ先: soichiro_yoshimura@zen.ac.jp
      </p>
    </div>
  );
}
