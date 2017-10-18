#!/usr/bin/env bash

cat ~/.vimrc > ./dotfiles/vimrc
cat ~/.tmux.conf > ./dotfiles/tmux.conf
git add -u && git commit -m "Update dotfiles"
git push -f origin master
