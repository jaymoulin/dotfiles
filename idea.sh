#!/usr/bin/env bash

echo "\033[1;31mInstalling IDEA\033[0m"
sudo apt-get install snap -y && sudo snap install intellij-idea-ultimate --classic --edge
