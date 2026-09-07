#!/usr/bin/env bash
set -euo pipefail
value="${1:-0}"
if ! [[ "$value" =~ ^[0-9]+$ ]]; then echo 'expected a non-negative integer' >&2; exit 2; fi
if (( value >= 80 )); then echo high; elif (( value >= 50 )); then echo medium; else echo low; fi
