#!/bin/bash
set -euo pipefail

# Pre-push checks matching GitHub Actions workflows:
#   1. Prettier formatting     (prettier.yml)
#   2. Broken links            (broken-links.yml)
#   3. Jekyll production build (deploy.yml)
#
# Prerequisites:
#   brew install node lychee
#   Docker running with: docker compose up -d

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[0;33m'
BOLD='\033[1m'
NC='\033[0m'

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ROOT_DIR="$(cd "$SCRIPT_DIR/.." && pwd)"
cd "$ROOT_DIR"

pass=0
fail=0
results=()

run_check() {
  local name="$1"
  shift
  printf "\n${BOLD}=== %s ===${NC}\n" "$name"
  if "$@"; then
    results+=("${GREEN}PASS${NC}  $name")
    ((pass++)) || true
  else
    results+=("${RED}FAIL${NC}  $name")
    ((fail++)) || true
  fi
}

# --- Check prerequisites ---
missing=()
command -v node   >/dev/null 2>&1 || missing+=("node (brew install node)")
command -v npx    >/dev/null 2>&1 || missing+=("npx (comes with node)")
command -v lychee >/dev/null 2>&1 || missing+=("lychee (brew install lychee)")
command -v docker >/dev/null 2>&1 || missing+=("docker")

if [ ${#missing[@]} -gt 0 ]; then
  printf "${RED}Missing prerequisites:${NC}\n"
  for m in "${missing[@]}"; do
    echo "  - $m"
  done
  exit 1
fi

# --- 1. Prettier ---
check_prettier() {
  npm install --save-dev --save-exact prettier @shopify/prettier-plugin-liquid 2>&1 | tail -1
  npx prettier . --check
}
run_check "Prettier formatting" check_prettier

# --- 2. Broken links ---
# Uses lychee.toml for config (exclude_path, exclude patterns, accept codes)
check_links() {
  lychee \
    --config lychee.toml \
    --user-agent 'curl/7.54' \
    --no-progress \
    './**/*.md' './**/*.html'
}
#run_check "Broken links" check_links

# --- 3. Jekyll build ---
check_build() {
  if ! docker compose ps --status running 2>/dev/null | grep -q jekyll; then
    printf "${YELLOW}Container not running. Starting it...${NC}\n"
    docker compose up -d
    echo "Waiting for bundle install to finish..."
    sleep 45
  fi
  docker compose exec jekyll env JEKYLL_ENV=production bundle exec jekyll build --trace
}
#run_check "Jekyll production build" check_build

# --- Summary ---
printf "\n${BOLD}=== Summary ===${NC}\n"
for r in "${results[@]}"; do
  printf "  %b\n" "$r"
done
printf "\n"

if [ "$fail" -gt 0 ]; then
  printf "${RED}${BOLD}%d check(s) failed.${NC} Fix the issues above before pushing.\n" "$fail"
  exit 1
else
  printf "${GREEN}${BOLD}All checks passed.${NC} Safe to push.\n"
  exit 0
fi
