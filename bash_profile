if [ -r ~/.bashrc ]; then
   source ~/.bashrc
fi

eval "$(rbenv init -)"

test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

