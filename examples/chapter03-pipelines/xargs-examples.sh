#!/usr/bin/env bash
set -euo pipefail
find "${1:-.}" -type f -name '*.sh' -print0 | xargs -0 -r bash -n
printf '%s\n' alpha beta gamma | xargs -n1 printf 'item=%s\n'
