#!/usr/bin/env bash
# Ubuntu: zsh + oh-my-zsh + dotfiles. Safe to re-run.
set -e

DOTFILES="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ZSH_CUSTOM="${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}"

sudo apt update
sudo apt install -y zsh git curl fzf ripgrep bat neovim eza

# oh-my-zsh (bez przełączania shella i odpalania zsh w trakcie instalacji)
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  RUNZSH=no CHSH=no KEEP_ZSHRC=yes \
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

clone() { [ -d "$2" ] || git clone --depth=1 "$1" "$2"; }
clone https://github.com/zsh-users/zsh-autosuggestions "$ZSH_CUSTOM/plugins/zsh-autosuggestions"
clone https://github.com/zsh-users/zsh-syntax-highlighting.git "$ZSH_CUSTOM/plugins/zsh-syntax-highlighting"
clone https://github.com/romkatv/powerlevel10k.git "$ZSH_CUSTOM/themes/powerlevel10k"

# symlinki (istniejące pliki lądują w *.bak)
link() { ln -sfn "$1" "$2"; }
[ -e "$HOME/.zshrc" ] && [ ! -L "$HOME/.zshrc" ] && mv "$HOME/.zshrc" "$HOME/.zshrc.bak"
[ -e "$HOME/.gitconfig" ] && [ ! -L "$HOME/.gitconfig" ] && mv "$HOME/.gitconfig" "$HOME/.gitconfig.bak"
link "$DOTFILES/zshrc" "$HOME/.zshrc"
link "$DOTFILES/gitconfig" "$HOME/.gitconfig"

# zsh jako domyślny shell
if [ "$(basename "$SHELL")" != "zsh" ]; then
  chsh -s "$(command -v zsh)"
  echo "Domyślny shell zmieniony na zsh - wyloguj się i zaloguj ponownie."
fi
