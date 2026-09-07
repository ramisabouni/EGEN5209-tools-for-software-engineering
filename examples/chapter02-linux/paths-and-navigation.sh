#!/usr/bin/env bash
set -euo pipefail
printf 'Current directory: %s\n' "$PWD"
printf 'Home directory:    %s\n' "$HOME"
printf 'Script directory:  %s\n' "$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
find . -maxdepth 2 -type f -print | sort
