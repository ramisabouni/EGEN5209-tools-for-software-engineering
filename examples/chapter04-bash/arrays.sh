#!/usr/bin/env bash
set -euo pipefail
tools=(git vim make "GNU awk")
printf 'Separate arguments:\n'; printf '  <%s>\n' "${tools[@]}"
printf 'One combined argument:\n'; printf '  <%s>\n' "${tools[*]}"
