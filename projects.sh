#!/usr/bin/env bash

echo -e "\033[1;31mInstalling Projects...\033[0m"

mkdir -p ~/projects/{jaymoulin,femtopixel}

github=(
    git@github.com:jaymoulin/docker-plex
    git@github.com:jaymoulin/docker-jdownloader
    git@github.com:jaymoulin/guzzlehttp-cloudflare
    git@github.com:jaymoulin/yamete
    git@github.com:jaymoulin/google-musicmanager-dedup-api
    git@github.com:jaymoulin/docker-twitter-cli
    git@github.com:jaymoulin/docker-twidge
    git@github.com:jaymoulin/docker-rpi-plex-video-converter
    git@github.com:jaymoulin/docker-google-cloudprint
    git@github.com:jaymoulin/docker-coinmon
    git@github.com:jaymoulin/docker-sshtron
    git@github.com:jaymoulin/docker-piu-piu
    git@github.com:jaymoulin/docker-google-chrome-webstore-download
    git@github.com:jaymoulin/google-music-manager-uploader
    git@github.com:jaymoulin/google-music-manager-downloader
    git@github.com:jaymoulin/google-music-manager-auth
    git@github.com:jaymoulin/youtube-music-uploader.git
    git@github.com:femtopixel/docker-google-lighthouse-puppeteer
    git@github.com:femtopixel/google-lighthouse-puppeteer
    git@github.com:femtopixel/google-lighthouse-puppeteer-cli-dashboard
    git@github.com:femtopixel/docker-google-lighthouse
    git@github.com:femtopixel/docker-xsstrike
    git@github.com:femtopixel/docker-google-chrome-headless
    git@github.com:femtopixel/utf8-bom-fixer
    git@github.com:femtopixel/nano-framework
    git@github.com:femtopixel/monolog-csvhandler
    git@github.com:femtopixel/docker-pdf2gdocs
    git@github.com:femtopixel/docker-google-closure-compiler-app
    git@github.com:femtopixel/crop
    git@github.com:femtopixel/github-release-notifier
    git@github.com:femtopixel/docker-google-closure-compiler-api
    git@github.com:femtopixel/docker-builder
    git@github.com:femtopixel/docker-multiarchbuilder
    git@github.com:femtopixel/depository
    git@github.com:femtopixel/contactbook
    git@github.com:femtopixel/is-mobile
    git@github.com:femtopixel/php-test
)

gitlab=(
    git@gitlab.com:jaymoulin/docker-autobuilder
    git@gitlab.com:femtopixel/jaymoulin.me
    git@gitlab.com:femtopixel/docker-kompose
    git@gitlab.com:femtopixel/mur
    git@gitlab.com:femtopixel/cursedware
    git@gitlab.com:femtopixel/gitlab-release-notifier
    git@gitlab.com:jaymoulin/docker-autobuilder
    git@gitlab.com:jaymoulin/keeptune
    git@gitlab.com:jaymoulin/docker-transmission
    git@gitlab.com:jaymoulin/docker-google-music-uploader
    git@gitlab.com:jaymoulin/mop-rpi
    git@gitlab.com:jaymoulin/docker-google-musicmanager
    git@gitlab.com:jaymoulin/docker-googler
    git@gitlab.com:jaymoulin/docker-google-music-downloader
    git@gitlab.com:jaymoulin/docker-ddgr
)

cd ~/projects
for repo in ${github[*]}; do
    git clone $repo "${repo/git@github\.com:/}"
done
for repo in ${gitlab[*]}; do
    git clone $repo "${repo/git@gitlab\.com:/}"
done

