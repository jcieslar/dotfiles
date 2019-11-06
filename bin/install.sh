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

# https://gist.github.com/kevin-smets/8568070
if [ ! -L '~/.zshrc' ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ln -s ~/dotfiles/zshrc ~/.zshrc
fi

if [ ! -L '~/.bash_aliases' ]; then
  ln -s ~/dotfiles/bash_aliases ~/.bash_aliases
fi

if [ ! -L '~/.bash_profile' ]; then
  ln -s ~/dotfiles/bash_profile ~/.bash_profile
fi

if [ ! -L '~/Library/ApplicationSupport/Code/User/settings.json' ]; then
  ln -s ~/dotfiles/Code/User/settings.json ~/Library/ApplicationSupport/Code/User/settings.json
fi

if [ ! -L '~/Library/ApplicationSupport/Code/User/snippets' ]; then
  ln -s ~/dotfiles/Code/User/snippets/ ~/Library/ApplicationSupport/Code/User/snippets/
fi

curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
