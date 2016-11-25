"change display mapping
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
"toggle hlsearch
nnoremap <silent><Esc><Esc> :<C-u>set nohlsearch!<CR>
"vertical size adjust '<' '>'
nnoremap <silent>< <C-w><
nnoremap <silent>> <C-w>>
"horizonal size adjust '+' '-'
noremap <silent>+ <C-w>+
noremap <silent>- <C-w>-
" Y => y$
nnoremap Y y$
" tabnew mapping : tn
nnoremap <silent> tn :<C-u>tabnew<CR>
" vimdiff => :Diff
command! -nargs=1 -complete=file Diff vertical diffsplit <args>
" terminal mode
if has('nvim')
  tnoremap <silent> <ESC> <C-\><C-n>
endif
