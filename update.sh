#!/usr/bin/env bash

cat ~/.vimrc > ./dotfiles/vimrc
cat ~/.tmux.conf > ./dotfiles/tmux.conf
cp ~/.config/nvim/* ./dotfiles/

