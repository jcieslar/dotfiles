#!/bin/bash

# git
alias st='git st'
alias lg='git l'
alias ci='git ci'
alias co='git co'
alias br='git br'
alias merge='git merge'
alias stash='git stash'
alias pop='git stash pop'
alias clone='git clone'
alias branch='git branch'
alias rebase='git rebase'
alias amend='git commit --amend'
alias diff='git diff'
alias add='git add'
alias reset='git reset'

alias push='git push origin'
alias pull='git pull origin'
alias fetch='git fetch origin'

alias grep="grep --color"
alias install='sudo apt-get install'
alias update='sudo apt-get update && sudo apt-get upgrade'

# bash
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias c='clear'
alias tmux='tmux -2'

# foreman
alias fm="foreman start"

# vim
alias v="vim"

# bundle
alias be='bundle exec'
alias bi='bundle install'
alias b='bundle'

# rails
alias rc='be rails c'
alias rs='be rails s'
alias rspec='clear; be rspec --color'
alias log='tail -f log/development.log'
alias rr='rake routes'
alias rdbm='rake db:migrate'
alias rdbr='rake db:rollback'

# laziness
alias ch='google-chrome'
alias chh='ch gmail.com facebook.com twitter.com github.com keep.google.com'
alias chw='ch gmail.com monterail.harvestapp.com/time mail.google.com/mail/u/1/ github.com keep.google.com'
