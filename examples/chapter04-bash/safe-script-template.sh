#!/usr/bin/env bash
set -euo pipefail
usage() { printf 'Usage: %s INPUT OUTPUT\n' "$0"; }
(( $# == 2 )) || { usage >&2; exit 2; }
input=$1; output=$2
[[ -f "$input" ]] || { printf 'Input not found: %s\n' "$input" >&2; exit 1; }
cp -- "$input" "$output"
