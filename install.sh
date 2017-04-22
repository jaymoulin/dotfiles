#!/bin/sh

DIR="$(cd $( dirname $0) && pwd)"
"$DIR/git_aliases.sh"
"$DIR/aliases.sh"
"$DIR/git_config.sh"
"$DIR/home.sh"
"$DIR/tools.sh"
"$DIR/vim.sh"
