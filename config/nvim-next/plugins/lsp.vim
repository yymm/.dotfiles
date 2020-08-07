"
" asyncomplete
"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

let g:lsp_diagnostics_enabled = 0

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

" 補完候補が一番先頭に出てきて困ってしまったのでコメントアウト
" imap <C-k> <Plug>(neosnippet_expand_or_jump)
" smap <C-k> <Plug>(neosnippet_expand_or_jump)
" xmap <C-k> <Plug>(neosnippet_expand_target)
" au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#neosnippet#get_source_options({
"     \ 'name': 'neosnippet',
"     \ 'whitelist': ['*'],
"     \ 'completor': function('asyncomplete#sources#neosnippet#completor'),
"     \ }))

if has('python3')
  let g:UltiSnipsExpandTrigger="<c-k>"
  let g:UltiSnipsJumpForwardTrigger="<c-b>"
  let g:UltiSnipsJumpBackwardTrigger="<c-z>"
  call asyncomplete#register_source(asyncomplete#sources#ultisnips#get_source_options({
    \ 'name': 'ultisnips',
    \ 'whitelist': ['*'],
    \ 'completor': function('asyncomplete#sources#ultisnips#completor'),
    \ }))
endif

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emoji#get_source_options({
    \ 'name': 'emoji',
    \ 'whitelist': ['text', 'markdown'],
    \ 'completor': function('asyncomplete#sources#emoji#completor'),
    \ }))

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'completor': function('asyncomplete#sources#file#completor'),
    \ }))

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'whitelist': ['*'],
    "\ 'blacklist': ['go', 'rust'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ 'config': {
    \    'max_buffer_size': 5000000,
    \  },
    \ }))

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#necovim#get_source_options({
    \ 'name': 'neco-vim',
    \ 'whitelist': ['vim'],
    \ 'completor': function('asyncomplete#sources#necovim#completor'),
    \ }))
"
" vim-lsp
"
let g:lsp_fold_enabled = 0

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> <f2> <plug>(lsp-rename)
    " refer to doc to add more commands
endfunction

augroup lsp_install
    au!
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

"
" sqls
"
if executable('sqls')
    augroup LspSqls
        autocmd!
        autocmd User lsp_setup call lsp#register_server({
        \   'name': 'sqls',
        \   'cmd': {server_info->['sqls']},
        \   'whitelist': ['sql'],
        \   'workspace_config': {
        \     'sqls': {
        \       'connections': [
        \         {
        \           'driver': 'mysql',
        \           'dataSourceName': 'root:root@tcp(127.0.0.1:13306)/world',
        \         },
        \         {
        \           'driver': 'postgresql',
        \           'dataSourceName': 'host=127.0.0.1 port=55432 user=postgres password=example dbname=development sslmode=disable',
        \         },
        \       ],
        \     },
        \   },
        \ })
    augroup END
endif
