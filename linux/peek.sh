#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Peek (screen2gif)...\033[0m"


sudo add-apt-repository ppa:peek-developers/stable
sudo apt update && sudo apt install peek -y


echo -e "\033[1;31mInstalling Asciinema...\033[0m"

sudo -H pip3 install asciinema
