zshrc
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#!/bin/bash

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="agnoster"

# ZSH_THEME="agnoster"
DEFAULT_USER=`whoami`
ZSH_THEME="powerlevel10k/powerlevel10k"
#POWERLEVEL9K_MODE="nerdfont-complete"
# ZSH_THEME="robbyrussell"
# risto

# POWERLEVEL9K_VCS_CLEAN_FOREGROUND='blue'
# POWERLEVEL9K_VCS_CLEAN_BACKGROUND='black'
# POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND='yellow'
# POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND='black'
# POWERLEVEL9K_VCS_MODIFIED_FOREGROUND='red'
# POWERLEVEL9K_VCS_MODIFIED_BACKGROUND='black'


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"
LS_COLORS='di=1:fi=32:ln=31:pi=5:so=5:bd=5:cd=5:or=31'

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  gitfast
  asdf
  history
  rake-fast
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# npm rake yarn npx bundler gatsby

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR=code

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"



###### CUSTOM ########

if [ -f ~/dotfiles/bash_aliases ]; then
  . ~/dotfiles/bash_aliases
fi

if [ -f ~/dotfiles/pl_aliases ]; then
  . ~/dotfiles/pl_aliases
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
#export PATH="/usr/local/opt/node@12/bin:$PATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export TERM="xterm-256color"

# export PATH=$PATH:$HOME/Library/Python/2.7/bin
# export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
export FZF_DEFAULT_COMMAND="rg --files --hidden --glob '!.git/*' --smart-case"


if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
# export PATH="/opt/homebrew/opt/postgresql@12/bin:$PATH"
# PATH="/opt/homebrew/opt/postgresql@14/bin:$PATH"
export PATH=~/.local/bin:$PATH
export PATH="/opt/homebrew/bin/pg_config:$PATH"
# export PATH="/opt/homebrew/opt/postgresql@14/bin/psql:$PATH"

ssh-add --apple-load-keychain > /dev/null 2>&1

# if [ -f /opt/homebrew/opt/asdf/libexec/asdf.sh ]; then
#   . /opt/homebrew/opt/asdf/libexec/asdf.sh
#   # export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"
# fi
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

export LDFLAGS="-L$(brew --prefix libyaml)/lib"
export CPPFLAGS="-I$(brew --prefix libyaml)/include"
export RUBY_YJIT_ENABLE=1
export RUBY_CONFIGURE_OPTS=--enable-yjit
export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES

export PATH="/opt/homebrew/opt/grep/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/findutils/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/gnu-sed/libexec/gnubin:$PATH"
export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"

export PGGSSENCMODE="disable"
export DISABLE_SPRING=1
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin/psql:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/postgresql@16/lib"
export CPPFLAGS="-I/opt/homebrew/opt/postgresql@16/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/postgresql@16/lib/pkgconfig"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/libpq/lib"
export CPPFLAGS="-I/opt/homebrew/opt/libpq/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/libpq/lib/pkgconfig"
export PG_CONFIG="/opt/homebrew/opt/postgresql@16/bin/pg_config"

m() {
  if [ -z "$1" ]; then
    git merge $(git branch | fzf)
  else
    git merge "$1"
  fi
}

export RUBY_CONFIGURE_OPTS=--enable-yjit
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
[[ -d $PYENV_ROOT/bin ]] && eval "$(pyenv init -)"


export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && . "/opt/homebrew/opt/nvm/nvm.sh"
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
