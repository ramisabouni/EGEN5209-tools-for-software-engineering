#!/usr/bin/env bash
set -euo pipefail
tmp=$(mktemp -d)
trap 'rm -rf "$tmp"' EXIT
touch "$tmp/report.txt"
chmod 640 "$tmp/report.txt"
ls -l "$tmp/report.txt"
