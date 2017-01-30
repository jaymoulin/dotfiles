#!/bin/sh

echo -e "\e[1mInstalling aliases...\e[0m"

echo "alias gid='git diff'" >> ~/.bash_aliases
echo "alias gis='git status'" >> ~/.bash_aliases
echo "alias gif='git links'" >> ~/.bash_aliases
echo "alias giz='git z'" >> ~/.bash_aliases
echo "alias gam='git ac'" >> ~/.bash_aliases
echo "alias gitclean='git tidy'" >> ~/.bash_aliases
echo "alias rpi='ssh femtopixel.hd.free.fr'" >> ~/.bash_aliases

echo "search() {
  find . -type f -exec grep -H \"\$1\" {} \; | grep \"\$1\"
}" >> ~/.bash_aliases
