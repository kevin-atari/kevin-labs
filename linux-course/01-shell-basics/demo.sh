#!/usr/bin/env bash
# -e: stop on error  -u: error on unset vars  -o pipefail: catch pipe failures
set -euo pipefail

# keep outputs in a clean folder
mkdir -p out

echo "Lesson 01 — pipes & redirects"

# (1) Top CPU processes → save to a file AND show on screen
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 | tee out/top_cpu.txt

# (2) Count regular files in *this* folder (non-recursive) and save count
find . -maxdepth 1 -type f | wc -l | tee out/file_count.txt

# (3) Search for 'bash' in /etc/shells
#     stdout → result file, stderr (errors) → separate log file
grep -n "bash" /etc/shells > out/bash_shells.txt 2> out/errors.log

echo "Done. See the out/ directory."
