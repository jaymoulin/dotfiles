#!/bin/sh

# Some docs
# https://hackernoon.com/lesser-known-git-commands-151a1918a60#.j9k9zlwge
# search alias : https://hackernoon.com/5-git-fundamentals-ded819a34cfe#.4xisjhmqr

git config --global alias.please 'push --force-with-lease'
git config --global alias.amend 'commit --amend --no-edit'
git config --global alias.it '!git init && git commit -m “root” --allow-empty'
git config --global alias.stsh 'stash --keep-index'
git config --global alias.staash 'stash --include-untracked'
git config --global alias.staaash 'stash --all'
git config --global alias.shorty 'status --short --branch'
git config --global alias.merc 'merge --no-ff'
git config --global alias.grog 'log --graph --abbrev-commit --decorate --all --format=format:"%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(dim white) - %an%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n %C(white)%s%C(reset)"'
git config --global alias.search "log --no-merges -i -E --pretty='%h (%ad) - [%an] %s %d' --date=format:'%b %d %Y' --grep"
git config --global alias.links 'fetch --all --prune'
git config --global alias.tidy '!git checkout master && git links && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
git config --global alias.z '!git add --all && git stash && git stash drop'
git config --global alias.ac '!git add --all && git amend'

