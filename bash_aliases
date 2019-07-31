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

# bash
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias c='clear'

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
alias migrate='be rake db:migrate'
alias rollback='be rake db:rollback'
alias db='be rake db:drop db:create db:migrate'
alias seed='be rake db:seed'
alias t='rails test -d'

# sublime
alias s='subl .'

# atom
alias a='atom .'

# visual studio code
alias vc='code .'
