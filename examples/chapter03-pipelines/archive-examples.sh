#!/usr/bin/env bash
set -euo pipefail
source_dir="${1:-.}"
archive="${2:-course-files.tar.gz}"
tar -czf "$archive" --exclude='.git' "$source_dir"
tar -tzf "$archive" | sed -n '1,10p'
