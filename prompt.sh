#!/bin/sh

echo -e "\e[1mInstalling Prompt...\e[0m"

cd
git clone https://github.com/nojhan/liquidprompt.git

echo "[[ \$- = *i* ]] && source ~/liquidprompt/liquidprompt" >> ~/.bashrc