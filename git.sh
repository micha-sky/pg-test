#!/bin/sh

current_date=$(git log -1 --format=format:%ai)
#new_date = date "--date=-2 month" '+%Y-%m-%d %H:%M:%S %Z'
new_date=$(date -d "$current_date - 6 months" --rfc-2822)
#old_date = ${current_date}
for commit in $(git rev-list master)
do
    GIT_COMMITTER_DATE=$(date -d " $(git show -s --format=%ci $commit) - 6 months" --rfc-2822) git commit --ammend
done 
