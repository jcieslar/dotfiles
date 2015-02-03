dotfiles
========

My Ubuntu dotfiles

## Instalation:
Create symlinks
```
cd bin
./install.sh
```

##About submodules:
```
git submodule update --init --recursive
```

## Add new plugin:

```
cd ~/dotfiles
git submodule add https://github.com/mmozuras/vim-github-comment.git vim/bundle/vim-github-comment
```

## Update plugins:
```
git submodule foreach git pull origin master
```

## Submodules
###Readd submodule:
```
git rm --cached vim/bundle/vim-github-comment
```

###Remove plugin:
```
git rm --cached vim/bundle/vim-rsi/
rm -rf .git/modules/vim/bundle/vim-rsi/
rm -rf vim/bundle/vim-rsi/
```

or
```
./remove.sh
```
and then pass plugin name

## List of plugins:
1. [ack](https://github.com/mileszs/ack.vim) - search
1. [vim-autoclose](https://github.com/Townk/vim-autoclose) - Auto close chars
1. [gist-vim](https://github.com/mattn/gist-vim) - gist
1. [git-vim](https://github.com/motemen/git-vim) - git actions e.g :GitBlame
1. [gitgutter](https://github.com/airblade/vim-gitgutter.git) - Shows signs for added, modified, and removed lines.
1. [javascript-libraries-syntax](https://github.com/othree/javascript-libraries-syntax.vim) - js frameworks syntax
1. [supertab](https://github.com/ervandew/supertab) - autocomplit
1. [vim-airline](https://github.com/bling/vim-airline) - Lean & mean status/tabline for vim that's light as air.
1. [vim-github-comment](https://github.com/mmozuras/vim-github-comment) - inline comment github code
1. [vim-poliglot](https://github.com/sheerun/vim-polyglot) - A syntaxt collection of language packs for Vim.
1. [vim-sleuth](https://github.com/tpope/vim-sleuth) - This plugin automatically adjusts 'shiftwidth' and 'expandtab' heuristically based on the current file
1. [webapi-vim](https://github.com/mattn/webapi-vim) - web api
1. [YankRing.vim](https://github.com/vim-scripts/YankRing.vim) - yank
