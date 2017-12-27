#!/usr/bin/env bash

echo -e "\033[1;31mInstalling NPM...\033[0m"

sudo apt-get install npm -y
sudo npm i -U -g npm

DIR="$(cd $( dirname $0) && pwd)"

cp $DIR/.npmrc ~/.npmrc

