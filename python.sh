#!/bin/sh

echo "\033[1;31mInstalling Python...\033[0m"

sudo apt-get remove python3-pip -y
sudo apt-get install python3
easy_install3 pip
pip install --upgrade pip

DIR="$(cd $( dirname $0) && pwd)"

ln -sf $DIR/.pypirc ~/.pypirc

