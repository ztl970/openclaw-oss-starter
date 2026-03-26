#!/usr/bin/env bash
set -euo pipefail

repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

cd "$repo_root"

printf 'Running repository validation...\n'
./validate_repo.sh

printf '\nBuilding public pack...\n'
./generate_public_pack.sh

printf '\nCombined example completed.\n'
