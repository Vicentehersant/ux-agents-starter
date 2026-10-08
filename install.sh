#!/usr/bin/env bash
# Install UX Agents Starter into a target project.
# Usage: ./install.sh <target-dir> [--force]
set -euo pipefail
SRC="$(cd "$(dirname "$0")" && pwd)"
TARGET="${1:-}"; FORCE="${2:-}"
if [ -z "$TARGET" ]; then echo "Usage: ./install.sh <target-dir> [--force]"; exit 1; fi
[ -d "$TARGET" ] || { echo "Target '$TARGET' does not exist."; exit 1; }
copy() {
  local from="$1" to="$2"
  if [ -e "$to" ] && [ "$FORCE" != "--force" ]; then echo "skip  $to (exists; use --force)"; return; fi
  mkdir -p "$(dirname "$to")"; cp "$from" "$to"; echo "add   $to"
}
for f in "$SRC"/.claude/agents/*.md "$SRC"/.claude/commands/*.md; do
  copy "$f" "$TARGET/${f#"$SRC"/}"
done
copy "$SRC/templates/handoff.md" "$TARGET/templates/handoff.md"
if [ -e "$TARGET/CLAUDE.md" ] && [ "$FORCE" != "--force" ]; then
  copy "$SRC/CLAUDE.md" "$TARGET/CLAUDE.ux-agents.md"
  echo "note  CLAUDE.md exists: kernel saved as CLAUDE.ux-agents.md; merge it or add '@CLAUDE.ux-agents.md' to your CLAUDE.md"
else
  copy "$SRC/CLAUDE.md" "$TARGET/CLAUDE.md"
fi
echo "Done. Open the project with 'claude' and try: /ux-audit <page>"
