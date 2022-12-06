"""" Set vim to not be compatible with Vi
set nocompatible
filetype on

"""" Set encoding to utf-8
set encoding=utf-8

"""" Permament undo
set undodir=~/.vim/undo
set undofile

"""" Avoid hit-enter prompts caused by long messages
set shortmess=at
set cmdheight=2

"""" Hides the message on the last line about Insert, Replace or Visual mode
"""" because this will be displayed by lightline
set noshowmode

"""" Define how to open buffers (files, etc.) - open in a new tab
set switchbuf=newtab

"""" Make yank use the system clipboard
set clipboard=unnamedplus

"""" Make redrawing and typing more performant
set lazyredraw
set ttyfast

"""" Setup autoindenting and keeping indentation on copy
set autoindent
set copyindent

"""" Draw column count line
set colorcolumn=120

"""" Display relative line numbers
set relativenumber
set number
set numberwidth=6

"""" Set grepprg to ripgrep
set grepprg=rg\ --vimgrep\ --no-heading\ --pcre2
set grepformat=%f:%l:%c:%m,%f:%l:%m

"""" Set tmpdir
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set nobackup
set nowritebackup

"""" Setup wildcards
set wildmode=longest,list:longest
set wildignore+=*vim/backups*
set wildignore+=*DS_Store*
set wildignore+=tags
set wildignore+=*/tmp/**
set wildignore+=*/log/**
set wildignore+=.git,*.rbc,*.class,.svn,*.png,*.jpg,*.gif
set wildignore+=*.gem

"""" Disable command timeout
set notimeout

"""" Setup tabs and wrapping
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set nowrap
set textwidth=0

"""" Treat dashes as part of a word
set iskeyword+=-

"""" Strip trailing whitespace on save
function! StripTrailingWhitespace()
  let save_cursor = getpos('.')
  %s/\s\+$//e
  call setpos('.', save_cursor)
endfunction
autocmd BufWritePre *.* call StripTrailingWhitespace()

""" mouse interactive selection
set mouse=a
