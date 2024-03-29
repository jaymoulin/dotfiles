#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Git aliases...\033[0m"

# Force push only if all commits of distant branch were fetched
git config --global alias.please 'push --force-with-lease'

#Amend the last commit without changing its comment
git config --global alias.amend 'commit --amend --no-edit'

#Init a Git repository with an initial empty commit
git config --global alias.it '!git init && git commit -m “root” --allow-empty'

#Stash only unstaged changes to tracked files
git config --global alias.stsh 'stash --keep-index'

#Stash untracked and tracked files
git config --global alias.staash 'stash --include-untracked'

#Stash ignored, untracked, and tracked files
git config --global alias.staaash 'stash --all'

#Displays a status in condensed format
git config --global alias.shorty 'status --short --branch'

#Merge with a commit instead of a Fast Forward (show merge in log history)
git config --global alias.merc 'merge --no-ff'

#Graphical log
git config --global alias.grog "log --graph --pretty=format:'%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ci) %C(bold blue)<%an>%Creset%n'"
git config --global alias.l "!git grog"

#Search in log for a specific commit message
git config --global alias.search "log --no-merges -i -E --pretty='%h (%ad) - [%an] %s %d' --date=format:'%b %d %Y' --grep"

#Refresh links between local and distant repository + prune thoses links
git config --global alias.links 'fetch --all --prune'

#Delete local branches that are merged into master/main
git config --global alias.tidy '!(git checkout master || git checkout main)&& git links && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d; true'

#Remove all local modifications
git config --global alias.z '!git add --all && git stash && git stash drop'

#Add all modifications in the last commit without changing its commit message
git config --global alias.ac '!git add --all && git amend'

#Delete all distant branches that are merged in master/main
git config --global alias.vanish '!(git checkout master || git checkout main) && git links && git branch -r --merged | grep -v "origin/master" | grep -v "origin/main" | grep -v "origin/HEAD" | xargs -I "{}" echo "{}" | sed "s/^origin\//origin \:/g" | xargs -I "{}" echo "git push {}" | bash - && git tidy'

#Pull current branch with rebasing method
git config --global alias.up 'pull --rebase'

#Checkout latest tag
git config --global alias.latest '!git fetch && git checkout `git tag --sort=v:refname | tail -1`'

#Put head on the distant
git config --global alias.dist '!git fetch `git rev-parse --symbolic-full-name --abbrev-ref @{upstream} | sed "s!/! !"` && git reset --hard @{u}'
