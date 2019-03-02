#!/usr/bin/env bash

echo -e "\033[1;31mInstalling IDEA\033[0m"
sudo apt-get install snap -y && sudo snap install intellij-idea-ultimate --classic --edge
echo "0.0.0.0 account.jetbrains.com" | sudo tee -a /etc/hosts

