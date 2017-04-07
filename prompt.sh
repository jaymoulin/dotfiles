#!/bin/sh

echo "\033[1;31mInstalling Prompt...\033[0m"

git clone https://github.com/nojhan/liquidprompt.git ~/.liquidprompt

echo "[[ \$- = *i* ]] && source ~/.liquidprompt/liquidprompt" >> ~/.bashrc
