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
alias rs='be rails s -p 3000 -b lvh.me'
alias rspec='clear; be rspec --color'
alias log='tail -f log/development.log'
alias rr='be rake routes'
alias rg='be rake routes | grep '
alias dbm='be rake db:migrate'
alias dbr='be rake db:rollback'
alias all='rails test -d'
alias t='rails test -d'
alias s='subl .'

# laziness
alias ch='google-chrome'
alias chh='ch gmail.com facebook.com twitter.com github.com keep.google.com'
alias chw='ch gmail.com monterail.harvestapp.com/time mail.google.com/mail/u/1/ github.com keep.google.com mail.google.com/mail/u/2/ trello.com'
