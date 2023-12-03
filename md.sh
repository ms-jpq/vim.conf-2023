#!/usr/bin/env -S -- bash -Eeu -O dotglob -O nullglob -O extglob -O failglob -O globstar

set -o pipefail

cd -- "${0%/*}"

TMP="$(mktemp)"
pandoc --from gfm --to html <./README.md | sed -E -- 's/^<hr \/>/\x0/' >"$TMP"
readarray -t -d $'\0' -- MDS <"$TMP"
rm -fr -- "$TMP"

N=1
for MD in "${MDS[@]}"; do
  MARKDOWN="$MD" envsubst <./md.m4.html >"$N.html"
  ((N++))
done

PAGES="${#MDS[@]}" envsubst <./index.m4.html >index.html
