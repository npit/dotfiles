#!/usr/bin/env bash

cp -v ~/.tmux.conf ~/.vimrc ./dotfiles/
git add -u && git commit -m "Update dotfiles"
git push -f origin master
