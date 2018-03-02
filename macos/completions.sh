#!/usr/bin/env bash

echo -e "\033[1;31mInstalling completions...\033[0m"

brew install git bash-completion
sudo mkdir -p /etc/bash_completion.d/
curl -L https://raw.githubusercontent.com/docker/compose/1.19.0/contrib/completion/bash/docker-compose -o $(brew --prefix)/etc/bash_completion.d/docker-compose
curl -XGET https://raw.githubusercontent.com/docker/cli/master/contrib/completion/bash/docker > $(brew --prefix)/etc/bash_completion.d/docker
