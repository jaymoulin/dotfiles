#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Git Config...\033[0m"


DIR="$(cd $( dirname $0) && pwd)"

git config --global user.name "Jay MOULIN"
git config --global user.email "jaymoulin@gmail.com"
git config --global core.excludesfile ~/.gitignore
git config --global core.autocrlf input
git config --global core.eol lf
git config --global core.editor vim
git config --global push.default simple
git config --global push.followTags true
ln -sf $DIR/gitconfig/.gitignore ~/.gitignore
