"
" asyncomplete
"
autocmd! CompleteDone * if pumvisible() == 0 | pclose | endif

let g:lsp_diagnostics_enabled = 0

inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#emoji#get_source_options({
    \ 'name': 'emoji',
    \ 'whitelist': ['text', 'markdown'],
    \ 'completor': function('asyncomplete#sources#emoji#completor'),
    \ }))

au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#file#get_source_options({
    \ 'name': 'file',
    \ 'whitelist': ['*'],
    \ 'priority': 10,
    \ 'completor': function('asyncomplete#sources#file#completor')
    \ }))

call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'whitelist': ['*'],
    \ 'blacklist': ['go', 'rust'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ 'config': {
    \    'max_buffer_size': 5000000,
    \  },
    \ }))

"
" vim-lsp
"
" set foldmethod=expr
"   \ foldexpr=lsp#ui#vim#folding#foldexpr()
"   \ foldtext=lsp#ui#vim#folding#foldtext()
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

if executable('rls')
    " pip install python-language-server
    au User lsp_setup call lsp#register_server({
        \ 'name': 'rust language server',
        \ 'cmd': {server_info->['rls']},
        \ 'whitelist': ['rust'],
        \ })
endif

if executable('vls')
    " add completion starting keyword: & and -
    set iskeyword+=$
    set iskeyword+=-
    au User lsp_setup call lsp#register_server({
        \ 'name': 'vue language server',
        \ 'cmd': {server_info->['vls']},
        \ 'whitelist': ['vue'],
        \ 'initialization_options': {
        \         'config': {
        \             'html': {},
        \              'vetur': {
        \                  'validation': {}
        \              }
        \         }
        \     }
        \ })
endif

if executable('typescript-language-server')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'javascript support using typescript-language-server',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'typescript-language-server --stdio']},
        \ 'whitelist': ['javascript', 'javascript.jsx', 'javascriptreact', 'typescript', 'typescript.tsx'],
        \ })
endif

if executable('gopls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'gopls',
        \ 'cmd': {server_info->['gopls']},
        \ 'whitelist': ['go'],
        \ })
    autocmd BufWritePre *.go LspDocumentFormatSync
endif

if executable('pyls')
    au User lsp_setup call lsp#register_server({
        \ 'name': 'pyls',
        \ 'cmd': {server_info->['pyls']},
        \ 'whitelist': ['python'],
        \ })
endif

"
" neosnippet
"
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)
au User asyncomplete_setup call asyncomplete#register_source(asyncomplete#sources#neosnippet#get_source_options({
    \ 'name': 'neosnippet',
    \ 'whitelist': ['*'],
    \ 'completor': function('asyncomplete#sources#neosnippet#completor'),
    \ }))
