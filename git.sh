for commit in $(git rev-list master)
do
    date -d "$(git show -s --format=%ci $commit) - 6 months" --rfc-2822

done
