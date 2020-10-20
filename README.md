# Release Drafter Test

## Commands

```sh
# create a branch and check it out
git checkout -b feat/KEY-${RANDOM}

# write a line into a file
echo "$(date)--${RANDOM}" >> service-a/file.txt
```