#!/bin/bash
# Quick scan - essential repo info only (no auth required)
# Usage: quick-scan.sh <owner/repo>
set -euo pipefail
REPO="${1:?Usage: quick-scan.sh <owner/repo>}"
curl -sfS -H "Accept: application/vnd.github+json" "https://api.github.com/repos/$REPO" 2>/dev/null || echo '{"error": "repo not found"}'
