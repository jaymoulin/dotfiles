#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Docker\033[0m"
sudo apt-get install curl python3-pip -y && sudo curl -sSL https://get.docker.com | sudo sh && \
    sudo usermod -aG docker $USER && sudo -H pip3 install docker-compose -U

echo -e "\033[1;31mInstalling Docker - Manifest-Tool...\033[0m"
git clone https://github.com/estesp/manifest-tool && cd manifest-tool && sudo make && sudo make install && cd .. && \
 rm -Rf manifest-tool

echo -e "/var/lib/docker/containers/*/*.log {
  rotate 7
  daily
  compress
  size=1M
  missingok
  delaycompress
  copytruncate
}" | sudo tee --append /etc/logrotate.d/docker-container

sudo curl -L https://raw.githubusercontent.com/docker/compose/1.23.2/contrib/completion/bash/docker-compose -o /etc/bash_completion.d/docker-compose

#echo -e "\033[1;31mInstalling Docker - Multiarch...\033[0m"
#sudo apt install -y qemu qemu-user-static qemu-user binfmt-support
#docker run --rm --privileged multiarch/qemu-user-static:register

#git clone https://github.com/computermouth/qemu-static-conf.git
#sudo mkdir -p /lib/binfmt.d
#sudo cp qemu-static-conf/*.conf /lib/binfmt.d/
#sudo systemctl restart systemd-binfmt.service
#rm -Rf qemu-static-conf
