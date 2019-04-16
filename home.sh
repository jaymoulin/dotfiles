#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Prompt...\033[0m"

DIR="$(cd $( dirname $0) && pwd)"

if [ ! -d ~/.liquidprompt ]; then
  git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt
else
  cd ~/.liquidprompt && git pull && cd -
fi
if [ ! -d ~/.bashmarks ]; then
  git clone https://github.com/huyng/bashmarks.git ~/.bashmarks && cd ~/.bashmarks && make install && cd -
else
  cd ~/.bashmarks && git pull && cd -
fi

if [ -f ~/.bashrc ]; then
  rm ~/.bashrc
fi
if [ -f ~/.bash_completions ]; then
  rm ~/.bash_completions
fi
mkdir -p ~/.config/Code/
ln -sf $DIR/home/.vscode ~/.vscode
ln -sf $DIR/home/.config/Code/User ~/.config/Code/User
ln -sf $DIR/home/.bash_profile ~/.bash_profile
ln -sf $DIR/home/.bashrc ~/.bashrc
ln -sf $DIR/home/.tmux.conf ~/.tmux.conf
ln -sf $DIR/home/.bash_completion ~/.bash_completion
ln -sf $DIR/home/.bash_completions ~/.bash_completions
