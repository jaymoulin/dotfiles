#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Peek (screen2gif)...\033[0m"

sudo apt update && sudo apt install snap -y && sudo snap install peek


echo -e "\033[1;31mInstalling Asciinema...\033[0m"

sudo -H pip3 install asciinema
