#!/usr/bin/env bash

# VIM
mkdir -p ./dotfiles/nvim/
cp ~/.config/nvim/* ./dotfiles/nvim/

# TMUX
cat ~/.tmux.conf > ./dotfiles/tmux.conf

# SPACEMACS
cp ~/.spacemacs ./dotfiles/spacemacs.develop
cp ~/spacemacs.org ./

# FISH
mkdir -p ./dotfiles/fish/
cp ~/.config/fish/config.fish ./dotfiles/fish/
cp -r ~/.config/fish/functions/ ./dotfiles/fish/

# ZSH
mkdir -p ./dotfiles/zsh/
cp ~/.zshrc ./dotfiles/zshrc
