gh pr create --title "RELEASE dev > staging" --body "this is a release" --base staging --head dev
sleep 60

gh pr merge dev --delete-branch=false --rebase
sleep 5

gh pr create --title "RELEASE staging > master" --body "this is a release" --base master --head staging
sleep 60

gh pr merge staging --delete-branch=false --rebase
