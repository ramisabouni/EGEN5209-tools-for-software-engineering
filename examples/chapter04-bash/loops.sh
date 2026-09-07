#!/usr/bin/env bash
set -euo pipefail
for file in "$@"; do printf '%-30s %8s bytes\n' "$file" "$(wc -c < "$file")"; done
