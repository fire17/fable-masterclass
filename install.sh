#!/bin/sh
# Fable-Masterclass installer — installs the fable_masterclass Claude Code skill (+ /masterclass alias)
# and the book it references, side by side. Promptless, idempotent, never destroys:
# an existing install is backed up, a foreign 'fable' dir is never clobbered.
# Works from a clone (uses local files) or via curl|sh (fetches from GitHub raw).
set -e

SKILLS_DIR="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
RAW_BASE="https://raw.githubusercontent.com/fire17/fable-masterclass/main"
SRC_DIR="$(CDPATH='' cd -- "$(dirname -- "$0")" 2>/dev/null && pwd || echo .)"
TS="$(date +%Y%m%d-%H%M%S)"

fetch() { # fetch <repo-path> <dest>
  if [ -f "$SRC_DIR/$1" ]; then
    cp "$SRC_DIR/$1" "$2"
  else
    curl -fsSL "$RAW_BASE/$1" -o "$2"
  fi
}

mkdir -p "$SKILLS_DIR"

if [ -d "$SKILLS_DIR/fable_masterclass" ]; then
  cp -R "$SKILLS_DIR/fable_masterclass" "$SKILLS_DIR/fable_masterclass.bak-$TS"
  echo "backed up existing skill -> $SKILLS_DIR/fable_masterclass.bak-$TS"
  echo "  undo: rm -rf '$SKILLS_DIR/fable_masterclass' && mv '$SKILLS_DIR/fable_masterclass.bak-$TS' '$SKILLS_DIR/fable_masterclass'"
fi

mkdir -p "$SKILLS_DIR/fable_masterclass"
fetch "skill/fable_masterclass/SKILL.md" "$SKILLS_DIR/fable_masterclass/SKILL.md"
fetch "Fable-Masterclass.md" "$SKILLS_DIR/fable_masterclass/Fable-Masterclass.md"

# alias: real dir + symlinked SKILL.md; skip if a foreign 'masterclass' occupies the name
if [ -e "$SKILLS_DIR/masterclass" ] && [ ! -L "$SKILLS_DIR/masterclass/SKILL.md" ]; then
  echo "note: $SKILLS_DIR/masterclass exists and is not our alias — skipped (create manually if wanted)"
else
  mkdir -p "$SKILLS_DIR/masterclass"
  ln -sf ../fable_masterclass/SKILL.md "$SKILLS_DIR/masterclass/SKILL.md"
fi

echo "installed: fable_masterclass (+ /masterclass alias) -> $SKILLS_DIR"
echo "verify:    every skill reference lands in the book:"
echo "           sh scripts/verify_refs.sh '$SKILLS_DIR/fable_masterclass'   (from a clone)"
echo "uninstall: rm -rf '$SKILLS_DIR/fable_masterclass' '$SKILLS_DIR/masterclass'"
