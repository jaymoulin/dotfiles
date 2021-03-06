#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Python...\033[0m"

sudo apt-get remove python3-pip -y
sudo apt-get install python3-pip -y
sudo -H pip3 install --upgrade pip

DIR="$(cd $( dirname $0) && pwd)"

ln -sf $DIR/.pypirc ~/.pypirc

