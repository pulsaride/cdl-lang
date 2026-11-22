#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
cd "$ROOT"

required_sections=(
  '## Metadata'
  '## Objective'
  '## Non-goals'
  '## Acceptance criteria'
  '## Tasks'
  '## Verification'
  '## Delivery evidence'
)

fail=0
for spec in specs/increments/p*/*.md; do
  for section in "${required_sections[@]}"; do
    if ! grep -qF "$section" "$spec"; then
      echo "Missing '$section' in $spec" >&2
      fail=1
    fi
  done

  spec_id=$(basename "$spec" .md | cut -d- -f1-2)
  if ! grep -qF "# $spec_id" "$spec"; then
    echo "Title ID does not match filename: $spec" >&2
    fail=1
  fi
done

for index in specs/README.md specs/EXECUTION.md specs/TRACEABILITY.md; do
  if [[ ! -s "$index" ]]; then
    echo "Missing or empty spec index: $index" >&2
    fail=1
  fi
done

if [[ $fail -ne 0 ]]; then
  exit 1
fi

echo 'Incremental SDD specifications are structurally valid.'
