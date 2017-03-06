if exists('g:nyaovim_version')
  let g:airline_powerline_fonts = 0
  let g:airline_left_sep = ''
  let g:airline_right_sep = ''
else
  let g:airline_powerline_fonts = 1
endif
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#taboo#enabled = 1
if !has('nvim')
  let g:airline#extensions#whitespace#mixed_indent_algo = 2 " see :help airline-whitespace@en
endif
