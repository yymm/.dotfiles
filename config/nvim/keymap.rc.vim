"change display mapping
nmap <Down> <C-w>j
nmap <Up> <C-w>k
nmap <Left> <C-w>h
nmap <Right> <C-w>l
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
" Tab jump
nnoremap [Tag] <Nop>
nmap t [Tag]
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor
