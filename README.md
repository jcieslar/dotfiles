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

## List of plugins:

