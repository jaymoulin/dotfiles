#!/bin/sh

echo "\033[1;31mInstalling Git Config...\033[0m"

git config --global user.name "Jay MOULIN"
git config --global user.email "jaymoulin@gmail.com"
git config --global core.excludesfile ~/.gitignore
git config --global core.autocrlf input
git config --global core.eol lf
cp ./gitconfig/.gitignore ~/.gitignore
