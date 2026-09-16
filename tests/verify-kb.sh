#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"

if ! command -v swipl >/dev/null 2>&1; then
  echo "error: swipl is required to verify the migration knowledge base" >&2
  exit 127
fi

exec swipl -q -f "$repo_root/.prolog/verify.pl" -- "$@"

