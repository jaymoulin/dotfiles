#!/bin/sh

echo "\033[1;31mInstalling aliases...\033[0m"

DIR="$(cd $( dirname $0) && pwd)"
if [ -f ~/.jay_aliases ]; then
    rm ~/.jay_aliases
fi
if [ ! -f ~/.these_aliases ]; then
    if [ ! -f ~/.bash_aliases ]; then
        touch ~/.bash_aliases
        chmod 644 ~/.bash_aliases
    fi
    cp ~/.bash_aliases ~/.these_aliases
fi
echo "source ~/.jay_aliases" > ~/.bash_aliases
ln -sf "$DIR/aliases/.bash_aliases" ~/.jay_aliases