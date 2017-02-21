#!/bin/sh

echo "\033[1;31mInstalling Prompt...\033[0m"

cd
git clone https://github.com/nojhan/liquidprompt.git

echo "[[ \$- = *i* ]] && source ~/liquidprompt/liquidprompt" >> ~/.bashrc