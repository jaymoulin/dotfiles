#!/usr/bin/env bash

DIR="$(cd $( dirname $0) && pwd)"
"$DIR/git_aliases.sh"
"$DIR/aliases.sh"
"$DIR/git_config.sh"
"$DIR/home.sh"
"$DIR/vim.sh"

unameOut="$(uname -s)"
case "${unameOut}" in
    Linux*)     machine=Linux;;
    Darwin*)    machine=Mac;;
    CYGWIN*)    machine=Cygwin;;
    MINGW*)     machine=MinGw;;
    *)          machine="UNKNOWN:${unameOut}"
esac

if [ $machine == "Linux" ]; then
    "$DIR/linux/install.sh"
elif [ $machine == "Linux" ]; then
    "$DIR/macos/install.sh"
fi
