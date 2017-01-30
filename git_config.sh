#!/bin/sh

echo -e "\e[1mInstalling Git Config...\e[0m"

git config --global user.name "Jay MOULIN"
git config --global user.email "jaymoulin@gmail.com"
git config --global core.excludesfile ~/.gitignore
git config --global core.autocrlf input
git config --global core.eol lf
cp ./gitconfig/.gitignore ~/.gitignore
