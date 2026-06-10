#!/bin/bash
# GitHub project analyzer - fetches key metrics (no auth required for public repos)
# Usage: analyze.sh <owner/repo> [output_dir]
# Example: analyze.sh vercel/next.js /tmp/nextjs-analysis

set -euo pipefail

REPO="${1:?Usage: analyze.sh <owner/repo> [output_dir]}"
OUT="${2:-/tmp/gh-analysis-$(echo "$REPO" | tr '/' '-')}"
mkdir -p "$OUT"

API="https://api.github.com"

fetch() {
  local url="$1"; local out="$2"
  local resp
  resp=$(curl -sfS -H "Accept: application/vnd.github+json" "$url" 2>/dev/null) && echo "$resp" > "$out" || echo "[]" > "$out"
}

# --- Basic repo info ---
fetch "$API/repos/$REPO" "$OUT/repo.json"

# --- README (raw) ---
curl -sfS -H "Accept: application/vnd.github.raw" "$API/repos/$REPO/readme" > "$OUT/README.md" 2>/dev/null || echo "No README" > "$OUT/README.md"

# --- Recent commits (last 30) ---
fetch "$API/repos/$REPO/commits?per_page=30" "$OUT/commits.json"

# --- Contributors ---
fetch "$API/repos/$REPO/contributors?per_page=30" "$OUT/contributors.json"

# --- Issues (open, last 30) ---
fetch "$API/repos/$REPO/issues?state=open&per_page=30&sort=created&direction=desc" "$OUT/issues-open.json"

# --- Issues (closed recent) ---
fetch "$API/repos/$REPO/issues?state=closed&per_page=30&sort=updated&direction=desc" "$OUT/issues-closed.json"

# --- Pull Requests (open) ---
fetch "$API/repos/$REPO/pulls?state=open&per_page=20&sort=created&direction=desc" "$OUT/prs-open.json"

# --- Releases (last 10) ---
fetch "$API/repos/$REPO/releases?per_page=10" "$OUT/releases.json"

# --- Package.json (if exists) ---
curl -sfS -H "Accept: application/vnd.github.raw" "$API/repos/$REPO/contents/package.json" > "$OUT/package.json" 2>/dev/null || echo "No package.json" > "$OUT/package.json"

# --- Directory structure (root) ---
fetch "$API/repos/$REPO/contents/" "$OUT/structure.json"

# --- Top forks ---
fetch "$API/repos/$REPO/forks?per_page=5&sort=stargazers&direction=desc" "$OUT/top-forks.json"

# --- CI/Workflows ---
fetch "$API/repos/$REPO/actions/workflows" "$OUT/workflows.json"

# --- Rate limit info ---
fetch "$API/rate_limit" "$OUT/rate-limit.json"

echo "Analysis complete: $OUT"
