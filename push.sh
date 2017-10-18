#!/usr/bin/env bash
msg="Generic commit message"
[ $# -gt 0 ] msg="$@"
git add -u && git commit -m "$msg"
git push -f origin master
