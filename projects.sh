#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Projects...\033[0m"

mkdir -p ~/projects/{jaymoulin,femtopixel,cursedware}

github=(
    git@github.com:jaymoulin/docker-plex
    git@github.com:jaymoulin/docker-jdownloader
    git@github.com:jaymoulin/yamete
    git@github.com:jaymoulin/youtube-music-uploader.git
    git@github.com:femtopixel/docker-google-lighthouse-puppeteer
    git@github.com:femtopixel/google-lighthouse-puppeteer
    git@github.com:femtopixel/google-lighthouse-puppeteer-cli-dashboard
)

gitlab=(
    git@gitlab.com:femtopixel/jaymoulin.me
    git@gitlab.com:jaymoulin/keeptune
    git@gitlab.com:jaymoulin/mop-rpi
    git@gitlab.com:cursedware/www
)

cd ~/projects
for repo in ${github[*]}; do
    git clone $repo "${repo/git@github\.com:/}"
done
for repo in ${gitlab[*]}; do
    git clone $repo "${repo/git@gitlab\.com:/}"
done

