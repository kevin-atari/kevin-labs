# Lesson 01 — Shell Basics (pipes & redirects)

## What I practiced today
- Used `ps | head | tee` to view and save top CPU processes
- Counted files with `find` + `wc -l`
- Split stdout and stderr into different files with `>` and `2>`

## Commands I want to remember
- `ps -eo pid,comm,%cpu --sort=-%cpu | head -n 6 | tee out/top_cpu.txt`
- `find . -maxdepth 1 -type f | wc -l | tee out/file_count.txt`
- `grep -n "bash" /etc/shells > out/bash_shells.txt 2> out/errors.log`

## One subtle thing I learned
- `tee` writes to a file *and* shows output; `2>` is **stderr**, `>` is **stdout**

## Next lesson idea
- Try recursive searches and combine stdout+stderr into one file
