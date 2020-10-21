KEY=${KEY:=$RANDOM}
SERVICE=${SERVICE:=a}
PR=${PR:=feat}

# delete potentially existing local branch
git branch -D ${PR}/KEY-${KEY}_service-${SERVICE}
# delete potentially existing remote branch
git push origin --delete ${PR}/KEY-${KEY}_service-${SERVICE}

# checkout master
git checkout master

# reset
git reset --hard

# pull
git pull

# create a new branch feat/KEY-1234_service-a
git checkout -b ${PR}/KEY-${KEY}_service-${SERVICE}

# write a line into a file
echo "$(date)--${RANDOM}" >>service-${SERVICE}/file.txt

# add, commit, push
git add . && git commit -m'a commit' && git push -u origin HEAD

# create PR
gh pr create --title "KEY-${KEY} service-${SERVICE}" --body "my cool body for service-${SERVICE}" --base dev
