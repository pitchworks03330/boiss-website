#!/bin/sh
# 支援団体ロゴを images/logos/ に保存します（リポジトリのルートで1回だけ実行）
#   sh fetch_logos.sh
# ※ 各ロゴは使用許可を得たものだけ残してください（未取得のファイルは削除すれば文字表示に戻ります）
set -e
cd "$(dirname "$0")/images/logos"
UA="Mozilla/5.0"
get(){ curl -fsSL -A "$UA" -o "$1" "$2" && echo "OK  $1" || echo "NG  $1  ($2)"; }
get env.svg       "https://www.env.go.jp/content/000169622.svg"
get tokyo.svg     "https://upload.wikimedia.org/wikipedia/commons/c/c9/Symbol_of_Tokyo_Metropolis.svg"
get jfge.svg      "https://www.erca.go.jp/jfge/common/img/common/logo.svg"
get pronatura.jpg "https://www.pronaturajapan.com/"
get npfj.png      "https://www.npfj.or.jp/wp-content/themes/arkhe_child/src/images/logo_center_gr.png"
get takara.png    "https://www.takarashuzo.co.jp/assets/img/common/logo_takara02.png"
get ggg.png       "https://www.ggg.or.jp/common_img/logo.png"
