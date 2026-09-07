#!/usr/bin/env bash
set -euo pipefail
root="${1:-.}"
find "$root" -type f -name '*.sh' -perm -u=x -print
find "$root" -type f -size +10k -printf '%s %p\n' 2>/dev/null | sort -n
