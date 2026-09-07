#!/usr/bin/env bash
set -euo pipefail
if (( $# == 0 )); then printf 'Usage: %s FILE...\n' "$0" >&2; exit 2; fi
for file in "$@"; do [[ -e "$file" ]] && printf '%s exists\n' "$file" || printf '%s is missing\n' "$file"; done
