#!/usr/bin/env bash

echo 'add symlinks'

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

if [ ! -L '~/.config/nvim/init.vim' ]; then
  mkdir ~/.config/nvim
  ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

if [ ! -L '~/.config/nvim/vim-plug/plugins.vim' ]; then
  mkdir ~/.config/nvim//vim-plug
  ln -s ~/dotfiles/nvim/vim-plug/plugins.vim ~/.config/nvim/vim-plug/plugins.vim
fi


if [ ! -L '~/.vimrc' ]; then
  ln -s ~/dotfiles/vimrc ~/.vimrc
fi
