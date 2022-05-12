#!/usr/bin/env bash

# run it manually

ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitconfig_work ~/.gitconfig

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


# if [ ! -L '~/.config/nvim/init.vim' ]; then
#   mkdir ~/.config/nvim
#   ln -s ~/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

#   curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
# fi

# if [ ! -L '~/.config/nvim/vim-plug/plugins.vim' ]; then
#   mkdir ~/.config/nvim/vim-plug
#   ln -s ~/dotfiles/nvim/vim-plug/plugins.vim ~/.config/nvim/vim-plug/plugins.vim
# fi

# neovim
# https://www.chrisatmachine.com/Neovim/01-vim-plug/
# https://github.com/Szeliga/dotfiles

brew install fzf ripgrep bat neovim

mkdir ~/.config/nvim

curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

ln -sf ~/dotfiles/vim/*.vim ~/.vim/
ln -sf ~/dotfiles/UltiSnips ~/.vim/UltiSnips

echo "source ~/.vim/entrypoint.vim" >> ~/.config/nvim/init.vim
