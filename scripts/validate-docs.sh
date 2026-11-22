#!/usr/bin/env bash
set -euo pipefail

ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)
cd "$ROOT"

mkdocs build --strict
./scripts/validate-specs.sh

for required_spec in \
  specs/README.md \
  specs/TRACEABILITY.md \
  specs/templates/INCREMENT.md \
  specs/increments/p0/P0-001-compatibility-baseline.md; do
  if [[ ! -s "$required_spec" ]]; then
    echo "Required SDD specification is missing: $required_spec" >&2
    exit 1
  fi
done

tmp_dir=$(mktemp -d)
trap 'rm -rf "$tmp_dir"' EXIT

# Verify canonical repository ownership in active documentation/configuration.
if grep -RInE 'github.com/lsalihi/cdl-lang|lsalihi.github.io/cdl-lang|ghcr.io/lsalihi/cdl-lang' \
  --exclude-dir=.git --exclude-dir=build --exclude-dir=site \
  --exclude=REPOSITORY-MIGRATION.md --exclude=DOCUMENTATION-AUDIT.md \
  README.md docs examples mkdocs.yml .github lsp spec; then
  echo 'Obsolete repository or distribution reference found.' >&2
  exit 1
fi

# The organization image must not be advertised as usable until publication is verified.
if grep -RInE 'docker (pull|run).*ghcr.io/pulsaride/cdl-lang|ghcr.io/pulsaride/cdl-lang:latest' \
  docs README.md; then
  echo 'Unverified organization-scoped container command found in public instructions.' >&2
  exit 1
fi

# Compile the fully resolvable extraction fixture with lint.
./gradlew jar -q
for example in extraction/sepa/domain.cdl; do
  log_file="$tmp_dir/$(basename "$example").log"
  java -jar build/libs/cdl-0.7.0.jar lint "$example" >"$log_file" 2>&1
  if grep -qE 'token recognition error|extraneous input|mismatched input|Error:' "$log_file"; then
    echo "Example failed parser or compiler validation: $example" >&2
    cat "$log_file" >&2
    exit 1
  fi
done

# Exercise CTK inputs through the generator path that their golden cases verify.
for ctk_case in 01 02 03; do
  java -jar build/libs/cdl-0.7.0.jar gen openapi \
    "ctk/case${ctk_case}/cdl" "$tmp_dir/case${ctk_case}.yaml" >/dev/null 2>&1
done

echo 'Documentation validation passed.'
