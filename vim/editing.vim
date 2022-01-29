"""" Make ale fix code on save were available
let g:ale_fix_on_save = 1

"""" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-s><c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

""" Language Client setup
let g:LanguageClient_serverCommands = {
    \ 'ruby': ['tcp://localhost:7658']
    \ }

"""" coc.nvim config
let g:coc_global_extensions = ['coc-solargraph', 'coc-json', 'coc-browser', 'coc-java', 'coc-ultisnips', 'coc-emmet']
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <silent><expr> <c-space> coc#refresh()
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() :
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"


"""" Disable automatic new line at end of file for encoded rails credentials
autocmd BufRead,BufNewFile   *.yml.enc set nofixeol
autocmd BufRead,BufNewFile   spec/*.rb call SetTestsFolds()
function SetTestsFolds()
  set foldmethod=indent
  set foldnestmax=6
  set foldlevelstart=2
endfunction
