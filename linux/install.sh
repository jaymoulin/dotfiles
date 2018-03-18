#!/usr/bin/env bash

DIR="$(cd $( dirname $0) && pwd)"
"$DIR/tmux.sh"
"$DIR/docker.sh"
"$DIR/idea.sh"
"$DIR/peek.sh"
"$DIR/python.sh"
"$DIR/npm.sh"
"$DIR/interface.sh"
