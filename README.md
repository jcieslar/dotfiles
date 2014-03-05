dotfiles
========

My Ubuntu dotfiles

## Instalation:
git submodule update --init --recursive

## Add new plugin:

```
cd ~/dotfiles
git submodule add https://github.com/mmozuras/vim-github-comment.git vim/bundle/vim-github-comment
```

## Update plugins:
```
git submodule foreach git pull origin master
```

## List of plugins:

