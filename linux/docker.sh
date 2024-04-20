#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Docker\033[0m"
sudo apt-get install curl -y && sudo curl -sSL https://get.docker.com | sudo sh && \
    sudo usermod -aG docker $USER && sudo apt-get install docker-compose-plugin -y

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

echo -e '{"log-driver": "json-file", "log-opts": {"max-size": "10m", "max-file": "3"}}' | sudo tee --append /etc/docker/daemon.json
sudo service docker restart
