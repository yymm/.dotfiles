" ColorScheme
au MyAutoCmd VimEnter * highlight SignColumn ctermbg=237
au MyAutoCmd VimEnter * highlight SyntasticErrorSign cterm=bold ctermfg=255 ctermbg=203
au MyAutoCmd VimEnter * highlight SyntasticWarningSign cterm=bold ctermfg=233 ctermbg=150
let g:syntastic_error_symbol = 'E➤'
let g:syntastic_warning_symbol = 'W➤'
" Basic setting
let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" for javascript
let g:syntastic_javascript_checkers = ['eslint']
" for c/cpp
let g:syntastic_cpp_compiler_options = '-Wall -D"DISABLE_CALC_FORTRAN"'
