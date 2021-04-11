" Required for operations modifying multiple buffers like rename.
set hidden

let g:LanguageClient_serverCommands = {
    \ 'rust': ['rust-analyzer'],
    \ 'javascript': ['typescript-language-server', '--stdio'],
    \ 'javascript.jsx': ['typescript-language-server', '--stdio'],
    \ 'typescript': ['typescript-language-server', '--stdio'],
    \ 'typescript.jsx': ['typescript-language-server', '--stdio'],
    \ 'typescriptreact': ['typescript-language-server', '--stdio'],
    \ 'vue': ['vls'],
    \ 'go': ['gopls'],
    \ }

" note that if you are using Plug mapping you should not use `noremap` mappings.
nmap <F5> <Plug>(lcn-menu)
" Or map each action separately
nmap <silent>K <Plug>(lcn-hover)
nmap <silent> gd <Plug>(lcn-definition)
nmap <silent> <F2> <Plug>(lcn-rename)
