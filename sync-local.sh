#!/usr/bin/env bash
# Manual mirror: run from any clone of this repo with the monster-quest repo checked out.
# Usage: ./sync-local.sh "V:/Game Development/Games/Monster Quest UE5"
set -euo pipefail
SRC="${1:?path to monster-quest checkout}"
git -C "$SRC" show origin/main:web/monster-quest-3d/dist/index.html > index.html
git add index.html && git commit -m "sync dist from monster-quest@main (local)" && git push
