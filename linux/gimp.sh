#!/usr/bin/env bash

echo -e "\033[1;31mInstalling gimp...\033[0m"
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install -y gimp
