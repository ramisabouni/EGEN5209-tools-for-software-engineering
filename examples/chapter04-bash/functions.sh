#!/usr/bin/env bash
set -euo pipefail
die() { printf 'error: %s\n' "$*" >&2; exit 1; }
require_command() { command -v "$1" >/dev/null 2>&1 || die "missing command: $1"; }
for tool in git make python3; do require_command "$tool"; printf 'found %s\n' "$tool"; done
