#!/bin/bash

# git
alias st='git st'
alias lg='git l'
alias ci='git ci'
alias br='git br'
alias cb='git co -b'
alias co='git co'
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
alias ph='git push origin HEAD'
alias merge='git merge --no-edit'
alias mm='git fetch origin; merge origin/master'
alias rb='git fetch origin; rebase origin/master'
alias pr='git pull --rebase origin master'
alias pm='git pull origin master'

alias grep="grep --color"

# bash
alias ..='cd ..'
alias ..2='cd ../..'
alias ..3='cd ../../..'
alias ..4='cd ../../../..'
alias ..5='cd ../../../../..'
alias c='clear'

# vim
alias v="nvim"

# bundle
alias be='bundle exec'
alias bi='bundle install'
alias b='bundle'

# rails
alias rc='be rails c'
# alias rs='be rails s -p 3000 -b lvh.me'
alias rs='bin/rails s'
alias rspec='clear; be rspec --color'
alias s='clear; bin/rspec --color'
alias log='tail -f log/development.log'
alias rr='be rails routes'
alias rg='be rails routes | grep '
alias migrate='be rails db:migrate'
alias rollback='be rails db:rollback'
alias setup='be rails db:reset'
alias seed='be rails db:seed'
alias t='rails test -d'

# atom
alias a='atom .'

# visual studio code
alias vc='code .'

# youtube-dl
# https://www.youtube.com/watch\?v\=f_JO_DhEzMk
# alias yt='youtube-dl -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/mp4"'
# alias yt-audio='youtube-dl --extract-audio --audio-format mp3'
# brew install yt-dlp
alias yt='yt-dlp '
alias yt2='yt-dlp -f best'
alias yt-audio='yt-dlp --extract-audio --audio-format mp3'
