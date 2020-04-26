"
" ale
"
" let g:ale_sign_error = 'E➤'
" let g:ale_sign_warning = 'W➤'
" let g:ale_echo_msg_format = '[%linter%] %s'
" let g:ale_lint_on_text_changed = 'normal'
"
" let g:ale_linters = {
" \   'html': [],
" \}
"
" let g:ale_fixers = {
" \   'c': ['clang-format'],
" \   'cpp': ['clang-format'],
" \   'vue': ['prettier', 'eslint'],
" \   'javascript': ['prettier', 'eslint'],
" \   'typescript': ['prettier', 'eslint'],
" \   'json': ['prettier'],
" \   'css': ['prettier'],
" \   'less': ['prettier'],
" \   'scss': ['prettier'],
" \   'python': ['autopep8'],
" \}
"
" " let g:ale_fix_on_save = 1

"
" syntastic
"
" " ColorScheme
" au MyAutoCmd VimEnter * highlight SignColumn ctermbg=237
" au MyAutoCmd VimEnter * highlight SyntasticErrorSign cterm=bold ctermfg=255 ctermbg=203
" au MyAutoCmd VimEnter * highlight SyntasticWarningSign cterm=bold ctermfg=233 ctermbg=150
" let g:syntastic_error_symbol = 'E➤'
" let g:syntastic_warning_symbol = 'W➤'
" " Basic setting
" let g:syntastic_always_populate_loc_list = 1
" "let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" " for javascript
" let g:syntastic_javascript_checkers = ['eslint']
" " for c/cpp
" let g:syntastic_cpp_include_dirs = ['src', '../src']
" let g:syntastic_cpp_compiler_options = '-Wall -D"_DEBUG"'
" " for Python
" let g:syntastic_python_checkers = ['python', 'flake8', 'mypy']

"
" neomake
"
" call neomake#configure#automake('nrwi', 500)
call neomake#configure#automake({
  \ 'TextChanged': {},
  \ 'InsertLeave': {'delay': 0},
  \ 'BufWritePost': {'delay': 0},
  \ 'BufWinEnter': {},
  \ }, 500)
" ColorScheme
" autocmd MyAutoCmd VimEnter * highlight SignColumn ctermbg=237
" autocmd MyAutoCmd ColorScheme * hi NeomakeErrorSign cterm=bold ctermfg=255 ctermbg=203
" autocmd MyAutoCmd ColorScheme * hi NeomakeWarningSign cterm=bold ctermfg=233 ctermbg=150
" autocmd MyAutoCmd ColorScheme * hi NeomakeMessageSign cterm=bold ctermfg=8 ctermbg=150
" autocmd MyAutoCmd ColorScheme * hi NeomakeInfoSign cterm=bold ctermfg=8 ctermbg=110
let g:neomake_error_sign = {
    \ 'text': 'E➤',
    \ 'texthl': 'NeomakeErrorSign',
    \ }
let g:neomake_warning_sign = {
    \   'text': 'W➤',
    \   'texthl': 'NeomakeWarningSign',
    \ }
let g:neomake_message_sign = {
     \   'text': 'M➤',
     \   'texthl': 'NeomakeMessageSign',
     \ }
let g:neomake_info_sign = {
     \ 'text': 'ℹ➤',
     \ 'texthl': 'NeomakeInfoSign',
     \ }
