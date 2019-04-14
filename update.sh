#!/usr/bin/env bash

# VIM
mkdir -p ./dotfiles/nvim/
cp ~/.config/nvim/* ./dotfiles/nvim/

# TMUX
cat ~/.tmux.conf > ./dotfiles/tmux.conf

# SPACEMACS
cat ~/.spacemacs > ./dotfiles/spacemacs.develop
# cat ~/spacemacs.org > ./spacemacs.org
cp -r ~/.emacs.d/private/snippets/ ./

# FISH
# mkdir -p ./dotfiles/fish/
# cp ~/.config/fish/config.fish ./dotfiles/fish/
# cp -r ~/.config/fish/functions/ ./dotfiles/fish/

# ZSH
mkdir -p ./dotfiles/zsh/
cp ~/.zshrc ./dotfiles/zshrc
