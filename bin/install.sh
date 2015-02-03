#!/usr/bin/env bash

echo 'symlinks'
if [ ! -L '~/.vimrc' ]; then
  ln -s ~/dotfiles/vim/vimrc ~/.vimrc
fi

if [ ! -L '~/.vim' ]; then
  ln -s ~/dotfiles/vim ~/.vim
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

if [ ! -L '~/.rspec' ]; then
  ln -s ~/dotfiles/rspec ~/.rspec
fi

if [ ! -L '~/.ackrc' ]; then
  ln -s ~/dotfiles/vim/ackrc ~/.ackrc
fi

if [ ! -L '~/.tmux.conf' ]; then
  ln -s ~/dotfiles/tmux.confc ~/.tmux.conf
fi

# osx
if [ ! -L '~/.bash_profile' ]; then
  ln -s ~/dotfiles/bash_profile ~/.bash_profile
fi
