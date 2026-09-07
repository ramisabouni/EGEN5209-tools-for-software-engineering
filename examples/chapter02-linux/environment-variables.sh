#!/usr/bin/env bash
set -euo pipefail
export COURSE_NAME="Tools for Software Engineering"
printf 'Course: %s\nUser: %s\nPath entries:\n' "$COURSE_NAME" "$USER"
printf '%s\n' "$PATH" | tr ':' '\n'
