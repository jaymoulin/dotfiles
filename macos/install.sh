#!/usr/bin/env bash

DIR="$(cd $( dirname $0) && pwd)"
"$DIR/brew.sh"
"$DIR/tmux.sh"
"$DIR/completion.sh"
