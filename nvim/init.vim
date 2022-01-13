source ~/.config/nvim/vim-plug/plugins.vim

let g:editor = "nvim"
let mapleader = "\<Space>"

" ctr+p
nmap <C-P> :FZF<CR>

" UI
" set background=dark
" colorscheme gruvbox

syntax enable
set termguicolors
colorscheme rigel

set nowrap




" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree | wincmd p
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let NERDTreeShowHidden=1

" Switch between different windows by their direction`
noremap <C-j> <C-w>j
noremap <C-k> <C-w>k
noremap <C-l> <C-w>l
noremap <C-h> <C-w>h
