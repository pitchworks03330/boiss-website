# BOISS 公式サイト（GitHub Pages 用）

## 構成
- `index.html` … サイト本体（画像は `images/` に分離済み）
- `thanks.html` … 旧お問い合わせ完了ページ（現在は未使用。残しておいても問題なし）
- `images/` … 写真・OGP画像・ファビコン
- `images/logos/` … 支援団体ロゴ（`fetch_logos.sh` で取得）
- `fetch_logos.sh` … ロゴ一括ダウンロード用スクリプト

## ロゴの取得（最初に1回）
リポジトリのルートで `sh fetch_logos.sh` を実行 → `images/logos/` を commit & push。
ファイルが無いロゴは自動で非表示になり、団体名の文字だけが表示されます。
使用許可が取れていないロゴは、ファイルを削除すれば文字表示に戻ります。

## 公開URLが決まったら
`index.html` の `https://ogasawara-boiss.jp/`（canonical / og:url / og:image の3か所）を実際の公開URLに置き換えてください。

## お問い合わせフォーム
GitHub Pages ではフォーム送信を受け取れないため、送信ボタンでメールアプリが開き、
入力内容が本文に入る方式にしています（宛先: info@ogasawara-boiss.jp）。
