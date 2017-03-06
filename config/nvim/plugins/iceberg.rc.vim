au MyAutoCmd VimEnter * nested colorscheme iceberg
" backgroung transparency for Ubuntu
if has('unix')
  au MyAutoCmd VimEnter * highlight Normal ctermbg=none
  au MyAutoCmd VimEnter * highlight NonText ctermbg=none
  au MyAutoCmd VimEnter * highlight TablineSel ctermbg=none
  au MyAutoCmd VimEnter * highlight LineNr ctermbg=none
  au MyAutoCmd VimEnter * highlight CursorLineNr ctermbg=none
  au MyAutoCmd VimEnter * highlight Folded ctermbg=none
endif
" Visual mode
au MyAutoCmd VimEnter * highlight Visual ctermbg=216
