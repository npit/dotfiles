#!/usr/bin/env bash

cp -v ~/.tmux.conf ~/.vimrc ./dotfiles/
git add -u && git commit -m "Updated dotfiles"
git push origin master
