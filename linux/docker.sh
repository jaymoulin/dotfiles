#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Docker\033[0m"
sudo apt-get install curl python3-pip -y && sudo curl -sSL https://get.docker.com | sudo sh && \
    sudo usermod -aG docker $USER && sudo -H pip3 install docker-compose -U

echo -e "\033[1;31mInstalling Docker - Manifest-Tool...\033[0m"
git clone https://github.com/estesp/manifest-tool && cd manifest-tool && sudo make && sudo make install && cd .. && \
 rm -Rf manifest-tool

echo -e "\033[1;31mInstalling Docker - Multiarch...\033[0m"
docker run --rm --privileged multiarch/qemu-user-static:register
sudo apt install -y qemu qemu-user-static qemu-user binfmt-support