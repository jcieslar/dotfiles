"""" Neovim specific configs
if has("nvim")
  Plug 'kassio/neoterm'
  let g:neoterm_default_mod="botright"
  au TermOpen * tnoremap <buffer> <leader><Esc> <c-\><c-n>
  " au FileType fzf tunmap <buffer> <Esc>

  " Integrate with nvr to open git editor in the running nvim session
  autocmd FileType gitcommit,gitrebase,gitconfig set bufhidden=delete
  set inccommand=nosplit
  augroup LuaHighlight
    autocmd!
    autocmd TextYankPost * silent! lua require'vim.highlight'.on_yank()
  augroup END
endif
