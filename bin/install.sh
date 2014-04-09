#!/usr/bin/env bash

echo 'symlinks'
if [ ! -L '~/.vimrc' ]; then
  ln -s ~/dotfiles/vim/vimrc ~/.vimrc
fi
if [ ! -L '~/.gitconfig' ]; then
  ln -s ~/dotfiles/vim ~/.vim
fi
if [ ! -L '~/.gitconfig' ]; then
  ln -s ~/dotfiles/gitconfig ~/.gitconfig
fi

# osx
if [ ! -L '~/.bash_profile' ]; then
  ln -s ~/dotfiles/bash_profile ~/.bash_profile
fi
