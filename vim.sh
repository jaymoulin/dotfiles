#!/bin/sh

echo "\033[1;31mInstalling VIM...\033[0m"

sudo apt-get install -y vim-nox
git clone https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
