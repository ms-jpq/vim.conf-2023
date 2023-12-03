#!/usr/bin/env -S -- bash -Eeu -O dotglob -O nullglob -O extglob -O failglob -O globstar

set -o pipefail

cd -- "${0%/*}"

FIRST="$1"

TMP="$(mktemp)"
pandoc --from gfm --to html <../README.md | sed -E -- 's/^<hr \/>/\x0/' >"$TMP"
readarray -t -d $'\0' -- MDS <"$TMP"

N=1
for MD in "${MDS[@]}"; do
  M4=(
    m4
    --fatal-warnings
    --prefix-builtins
    --define ENV_PAGE="$N"
    --define ENV_PAGES="${#MDS[@]}"
    --define ENV_MARKDOWN="$TMP"
    -- ./index.m4.html
  )
  printf -- '%s' "$MD" >"$TMP"
  "${M4[@]}" >"../$N.html"
  ((N++))
done

rm -fr -- "$TMP"
ln -sf -- ../1.html "$FIRST"
