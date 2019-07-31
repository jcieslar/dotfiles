#!/usr/bin/env bash

echo 'symlinks'

if [ ! -L '~/.vimrc' ]; then
  ln -s ~/dotfiles/vim/vimrc ~/.vimrc
fi

if [ ! -L '~/.vim' ]; then
  ln -s ~/dotfiles/vim ~/.vim
fi

if [ ! -L '~/.ackrc' ]; then
  ln -s ~/dotfiles/vim/ackrc ~/.ackrc
fi

if [ ! -L '~/.gitconfig' ]; then
  ln -s ~/dotfiles/gitconfig ~/.gitconfig
fi

if [ ! -L '~/.bashrc' ]; then
  ln -s ~/dotfiles/bashrc ~/.bashrc
fi

if [ ! -L '~/.bash_aliases' ]; then
  ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
fi

if [ ! -L '~/.bash_profile' ]; then
  ln -s ~/dotfiles/bash_profile ~/.bash_profile
fi

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
