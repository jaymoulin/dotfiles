#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Prompt...\033[0m"

DIR="$(cd $( dirname $0) && pwd)"

if [ ! -d ~/.liquidprompt ]; then
  git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt
else
  cd ~/.liquidprompt && git pull
fi

if [ -f ~/.bashrc ]; then
  rm ~/.bashrc
fi
ln -sf $DIR/home/.bash_profile ~/.bash_profile
ln -sf $DIR/home/.bashrc ~/.bashrc
ln -sf $DIR/home/.bash_completion ~/.bash_completion
ln -sf $DIR/home/.bash_completions ~/.bash_completions
