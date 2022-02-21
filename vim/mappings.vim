"""" Map leader to ,
" let mapleader = ','
let mapleader = "\<Space>"

"""" Writing and quitting
noremap <silent> <leader>w :w<CR>
noremap <silent> <leader>W :wq<CR>
noremap <silent> <leader>q :q<CR>
nnoremap <silent> <leader>Q :q!<CR>

"""" Tab navigation
noremap <S-l> gt
noremap <S-h> gT

"""" Quickfix list navigation
noremap <silent> <leader>co :copen<CR>
noremap <silent> <leader>cc :cclose<CR>
noremap <silent> <leader>cn :cnext<CR>
noremap <silent> <leader>cp :cprevious<CR>

"""" Commenting
noremap <silent> <leader>/ :Commentary<CR>
vnoremap <silent> <leader>/ :Commentary<CR>

"""" File navigation and code searching
map <silent> <leader>a :Rg <C-R><C-W><CR>
noremap <silent> ; :Buffers<CR>
noremap <silent> <C-p> :Files<CR>

"""" Clear the search buffer when hitting space
" nnoremap <silent> <space> :nohlsearch<cr>

"""" Copy current file path to system pasteboard
map <silent> <leader>C :let @+ = expand("%")<CR>:echo "Copied: ".expand("%")<CR>

"""" Make Y consistent with D and C
map Y y$

"""" Mapping for folding RSpec it blocks
noremap <silent> <leader>f :normal zE<CR>:g/it "/normal jzfii<CR>

"""" Git mappings
map <silent> <leader>b :Git blame<CR>
map <silent> <leader>s :GFiles?<CR>

"""" NERDTree mappings
map <silent> \ :NERDTreeToggle<CR>
map <silent> \| :NERDTreeFind<CR>

"""" Code completion mappings
nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nmap <leader>r <Plug>(coc-rename)
nmap <leader>f  <Plug>(coc-fix)
