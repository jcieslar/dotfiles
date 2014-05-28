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
Readd submodule:
```
git rm --cached vim/bundle/vim-github-comment
```

Remove plugin:
```
git rm --cached vim/bundle/vim-rsi/
rm -rf .git/modules/vim/bundle/vim-rsi/
rm -rf vim/bundle/vim-rsi/
```

## List of plugins:
1. [ack](https://github.com/mileszs/ack.vim) - search
1. [vim-github-comment](https://github.com/mmozuras/vim-github-comment) - inline comment github code
1. [webapi-vim](https://github.com/mattn/webapi-vim) - web api
1. [gitgutter](https://github.com/airblade/vim-gitgutter.git) - Shows signs for added, modified, and removed lines.

