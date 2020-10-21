# Release Drafter Test

## Conclusions

- it doesn't matter if we rebase or merge or squash, a PR will show up in the release notes, if there has been a PR during the rollout (e.g. to merge/squash/rebase from dev > staging or staging > master)
  
## Questions
- is there any other way to synchronize dev and staging with master after a release than force-push?

### Release preparation

1. a rebase from dev > staging will change SHAs for included commits
2. a merge from dev > staging will keep SHAs and introduce a new merge commit


### TEST SCENARIOS

#### We release into master
- [x] what will the release notes look like, if we go with a merge commit from dev > staging and staging > master
  > the release notes will also include the PR from staging > master and the one from dev > staging, even though we won't find this commit in the history
- [x] will the SHAs change if we go with a rebase from staging > master during a release ?
  > yes, they will be screwed and unrelated to dev and staging!

#### We fix something on staging during an ongoing release
- [ ] will direct commits against staging (e.g. to fix sth) show up in release notes?
- [ ] will PRs against staging (e.g. to fix sth) show up in release notes? (if so, how could we avoid that?)