# Release Drafter Test

## Commands

```sh
# create a branch and check it out
git checkout -b feat/KEY-${RANDOM}

# write a line into a file
echo "$(date)--${RANDOM}" >> service-a/file.txt

#  push branch
git push -u origin HEAD

# create a PR
gh pr create --title "KEY-1234 my title" --body "and this is my body" --base master
```



