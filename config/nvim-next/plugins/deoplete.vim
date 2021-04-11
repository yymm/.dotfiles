set completeopt-=preview
let g:deoplete#enable_at_startup = 1

" tab completion
function! s:check_back_space() abort "{{{
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ deoplete#manual_complete()
inoremap <silent><expr> <S-TAB>
      \ pumvisible() ? "\<C-p>" :
      \ <SID>check_back_space() ? "\<S-TAB>" :
      \ deoplete#manual_complete()

"
" neosnippet
"
"neosnippet settings
" Plugin key-mappings.
" Note: It must be "imap" and "smap".  It uses <Plug> mappings.
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

" call deoplete#custom#option('keyword_patterns', {
"\ '_': '[a-zA-Z_]\k*',
"\ 'tex': '\\?[a-zA-Z_]\w*',
"\ 'vue': '[\\$@:]?[a-zA-Z_]\w*[!?]?',
"\})

" call deoplete#custom#source('lsp', 'input_pattern', '[^[\\$@:]?\w\s]$')
