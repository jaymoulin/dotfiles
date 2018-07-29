#!/usr/bin/env bash

echo -e "\033[1;31mInstalling git tools...\033[0m"

curl -s https://packagecloud.io/install/repositories/github/git-lfs/script.deb.sh | sudo bash
sudo apt-get install -y git-lfs
