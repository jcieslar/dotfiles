" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')
  "Plug 'sheerun/vimrc'
  " Better Syntax Support
  Plug 'sheerun/vim-polyglot'
  " File Explorer
  Plug 'scrooloose/NERDTree'

  " Search
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
  Plug 'junegunn/fzf.vim'

  " icons
  Plug 'ryanoasis/vim-devicons'

  " Auto pairs for '(' '[' '{'
  Plug 'jiangmiao/auto-pairs'

  """" Presentation plugins
  Plug 'Rigellute/rigel'
  " Themes color scheme
  Plug 'morhetz/gruvbox'
call plug#end()
