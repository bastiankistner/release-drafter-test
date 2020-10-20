KEY=1234
SERVICE=a
PR=feat

# checkout master
git checkout master

# pull
git pull

# create a new branch feat/KEY-1234_service-a
git checkout -b feat/KEY-${KEY}_service-${SERVICE}

# write a line into a file
echo "$(date)--${RANDOM}" >>service-${SERVICE}/file.txt

# add, commit, push
git add . && git commit -m'a commit' && git push -u origin HEAD

# create PR
gh pr create --title "KEY-${KEY} service-${SERVICE}" --body "my cool body for service-${SERVICE}" --base dev
