#!/bin/sh
# verify_refs.sh — prove that every [L<n>] line reference in the skill lands on its
# anchor in the book (a heading, or the colophon's verification line). Dependency-free.
# Usage: sh scripts/verify_refs.sh [dir]
#   dir may be a repo root (skill/fable_masterclass/SKILL.md + Fable-Masterclass.md)
#   or an installed skill dir (SKILL.md + Fable-Masterclass.md side by side). Default: .
set -e
DIR="${1:-.}"

if [ -f "$DIR/SKILL.md" ] && [ -f "$DIR/Fable-Masterclass.md" ]; then
  SKILL="$DIR/SKILL.md"; BOOK="$DIR/Fable-Masterclass.md"
elif [ -f "$DIR/skill/fable_masterclass/SKILL.md" ] && [ -f "$DIR/Fable-Masterclass.md" ]; then
  SKILL="$DIR/skill/fable_masterclass/SKILL.md"; BOOK="$DIR/Fable-Masterclass.md"
else
  echo "could not find SKILL.md + Fable-Masterclass.md under '$DIR'" >&2
  exit 2
fi

refs="$(grep -o 'L[0-9][0-9]*' "$SKILL" | sed 's/^L//' | sort -un)"
total=0; pass=0; fail=0
for n in $refs; do
  total=$((total+1))
  line="$(sed -n "${n}p" "$BOOK")"
  case "$line" in
    '#'*|'**Verification status'*) pass=$((pass+1)) ;;
    *) fail=$((fail+1)); echo "FAIL L$n: '$line'" ;;
  esac
done

echo "checked=$total passed=$pass failed=$fail"
[ "$fail" -eq 0 ] && [ "$total" -gt 0 ]
