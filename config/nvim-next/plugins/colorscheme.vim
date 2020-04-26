"
" airline
"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#taboo#enabled = 1
if !has('nvim')
  let g:airline#extensions#whitespace#mixed_indent_algo = 2 " see :help airline-whitespace@en
endif
let g:airline#extensions#branch#enabled = 0

"
" iceberg
"
" au MyAutoCmd VimEnter * nested colorscheme iceberg
" " backgroung transparency for Ubuntu
" if has('unix')
"   au MyAutoCmd VimEnter * highlight Normal ctermbg=none
"   au MyAutoCmd VimEnter * highlight NonText ctermbg=none
"   au MyAutoCmd VimEnter * highlight TablineSel ctermbg=none
"   au MyAutoCmd VimEnter * highlight LineNr ctermbg=none
"   au MyAutoCmd VimEnter * highlight CursorLineNr ctermbg=none
"   au MyAutoCmd VimEnter * highlight Folded ctermbg=none
" endif
" " Visual mode
" au MyAutoCmd VimEnter * highlight Visual ctermbg=216

"
" flattened
"
au MyAutoCmd VimEnter * nested colorscheme flattened_light
" au MyAutoCmd VimEnter * nested colorscheme flattened_dark
