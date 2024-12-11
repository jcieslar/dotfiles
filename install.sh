#!/usr/bin/env bash

# run it manually

# select one
ln -s ~/dotfiles/gitconfig ~/.gitconfig
# ln -s ~/dotfiles/gitconfig_work ~/.gitconfig

# https://gist.github.com/kevin-smets/8568070
if [ ! -L '~/.zshrc' ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ln -s ~/dotfiles/zshrc ~/.zshrc

  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
fi

if [ ! -L '~/.bash_aliases' ]; then
  ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
fi


brew install fzf ripgrep bat neovim
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install fzf

# vim
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim

ln -sf ~/dotfiles/lvim.lua ~/.config/lvim/config.lua
