#!/usr/bin/env bash
set -euo pipefail

pack_name="${OPENCLAW_PUBLIC_PACK_NAME:-openclaw-oss-starter-public-pack}"
output_dir="${OPENCLAW_PUBLIC_PACK_OUTPUT:-dist}"
stamp="$(date +%Y%m%d-%H%M%S)"
archive="${output_dir}/${pack_name}-${stamp}.tar.gz"
manifest="${output_dir}/${pack_name}-${stamp}.manifest.txt"

mkdir -p "$output_dir"

files=(
  "README.md"
  "LICENSE"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "CHANGELOG.md"
  "RELEASES.md"
  "validate_repo.sh"
  "generate_public_pack.sh"
  "cron/codex_quota_autoswitch.sh"
  "examples"
  "config"
  "references"
  "rules-fix-20260323/main_index.md"
  "rules-fix-20260323/family_boundary.md"
  "rules-fix-20260323/business_MEMORY_PUBLIC.md"
  "rules-fix-20260323/family_MEMORY_PUBLIC.md"
  "rules-fix-20260323/media_MEMORY_PUBLIC.md"
  "releases/0.1.0.md"
)

tar -czf "$archive" "${files[@]}"
{
  printf 'archive=%s\n' "$archive"
  printf 'files=\n'
  printf '%s\n' "${files[@]}"
} > "$manifest"

printf 'Created public pack: %s\n' "$archive"
printf 'Manifest: %s\n' "$manifest"
