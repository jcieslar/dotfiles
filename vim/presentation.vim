"""" Set color theme
let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
set termguicolors
colorscheme rigel
" colorscheme wal
let g:rigel_lightline = 1

"""" Configure devicons
let g:lightline = {
      \ 'colorscheme': 'rigel',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'cocstatus', 'readonly', 'absolutepath', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'filetype': 'MyFiletype',
      \   'fileformat': 'MyFileformat',
      \   'cocstatus': 'coc#status',
      \ }
      \ }
function! MyFiletype()
  return winwidth(0) > 70 ? (strlen(&filetype) ? &filetype . ' ' . WebDevIconsGetFileTypeSymbol() : 'no ft') : ''
endfunction

function! MyFileformat()
  return winwidth(0) > 70 ? (&fileformat . ' ' . WebDevIconsGetFileFormatSymbol()) : ''
endfunction

"""" Hightlight searched text
set hlsearch

"""" Always show tab bar
set showtabline=2

"""" Show matching brackets
set showmatch

"""" Highlight current line
set cursorline

"""" Show whitespace
set list
set listchars=trail:~

"""" Setup text cursor
set guicursor=n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50
      \,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor
      \,sm:block-blinkwait175-blinkoff150-blinkon175

"""" Set some colors to better match the theme
hi CursorLine cterm=none ctermbg=1
hi ColorColumn ctermbg=1

"""" Remove concealing of code in markdown and json
let g:vim_json_syntax_conceal = 0
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
