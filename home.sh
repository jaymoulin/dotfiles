#!/bin/sh

echo "\033[1;31mInstalling Prompt...\033[0m"

DIR="$(cd $( dirname $0) && pwd)"

if [ ! -d ~/.liquidprompt ]; then
  git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt
fi

if [ -f ~/.bashrc ]; then
  rm ~/.bashrc
fi
ln -sf $DIR/home/.bashrc ~/.bashrc
