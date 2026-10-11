#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DEST="${HOME}/.claude/skills"
FORCE=0
ALL=0
SKILLS=()
while (($#)); do
  case "$1" in
    --all) ALL=1; shift ;;
    --force) FORCE=1; shift ;;
    --dest) DEST="$2"; shift 2 ;;
    -h|--help) echo "Usage: bash install.sh [--all | skill...] [--force] [--dest PATH]"; exit 0 ;;
    -*) echo "Unknown option: $1" >&2; exit 2 ;;
    *) SKILLS+=("$1"); shift ;;
  esac
done
if ((ALL)); then
  for path in "$ROOT"/skills/*/SKILL.md; do
    [[ -f "$path" ]] && SKILLS+=("$(basename "$(dirname "$path")")")
  done
fi
(("${#SKILLS[@]}")) || { echo "Specify a skill or --all" >&2; exit 2; }
mkdir -p "$DEST"
for name in "${SKILLS[@]}"; do
  [[ "$name" =~ ^[a-z0-9][a-z0-9-]*$ ]] || { echo "Invalid skill name: $name" >&2; exit 2; }
  src="$ROOT/skills/$name"
  [[ -f "$src/SKILL.md" ]] || { echo "Unknown skill: $name" >&2; exit 2; }
  target="$DEST/$name"
  if [[ -e "$target" && "$FORCE" -ne 1 ]]; then
    echo "Already exists: $target (use --force to replace)" >&2; exit 1
  fi
  if [[ -e "$target" ]]; then rm -rf -- "$target"; fi
  cp -R "$src" "$target"
  echo "Installed $name -> $target"
done
