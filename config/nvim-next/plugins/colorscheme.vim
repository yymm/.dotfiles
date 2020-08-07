"
" airline
"
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline#extensions#tabline#tab_nr_type = 2
" experimental: not use taboo
" let g:airline#extensions#taboo#enabled = 1
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
" gruvbox
"
colorscheme gruvbox
set background=dark
noremap <silent> <F3> :call ToggleBackground()<CR>
function! ToggleBackground()
  if &background == 'light'
    set background=dark
  else 
    set background=light
  endif
endfunction
