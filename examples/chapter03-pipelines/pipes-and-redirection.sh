#!/usr/bin/env bash
set -euo pipefail
log="${1:-../../datasets/logs/application.log}"
grep ' ERROR ' "$log" | cut -d' ' -f3- | sort > error-summary.txt
printf 'Wrote %s error record(s).\n' "$(wc -l < error-summary.txt)"
