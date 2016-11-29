set number
set cursorline
set ruler
set showcmd
set showmatch
set hlsearch
set whichwrap=b,s,h,l,<,>,[,],~
set hidden
set ts=2 sts=0 sw=2 et
set smartindent
set cindent
set noswapfile
set fileencodings=utf-8,euc-jp,ucs-bom,iso-2022-jp,sjis,cp932,latin1
set nowrap
if has('nvim')
  set clipboard+=unnamedplus
else
  set laststatus=2
  set wildmenu
  set clipboard=unnamed,autoselect
  set backspace=indent,eol,start
endif
" visual tab
autocmd MyAutoCmd ColorScheme * hi SpecialKey ctermfg=darkmagenta
set list listchars=tab:¦_
" highlighting zenkaku space
autocmd MyAutoCmd BufRead,BufNew * match Error /　/

" ===========================================================
" disable default plugins

let g:loaded_gzip              = 1
let g:loaded_tar               = 1
let g:loaded_tarPlugin         = 1
let g:loaded_zip               = 1
let g:loaded_zipPlugin         = 1
let g:loaded_rrhelper          = 1
let g:loaded_2html_plugin      = 1
let g:loaded_vimball           = 1
let g:loaded_vimballPlugin     = 1
let g:loaded_getscript         = 1
let g:loaded_getscriptPlugin   = 1
let g:loaded_netrw             = 1
let g:loaded_netrwPlugin       = 1
let g:loaded_netrwSettings     = 1
let g:loaded_netrwFileHandlers = 1
"let g:loaded_matchparen        = 1
let g:loaded_LogiPat           = 1
let g:loaded_logipat           = 1
let g:loaded_tutor_mode_plugin = 1
let g:loaded_spellfile_plugin  = 1
let g:loaded_man               = 1
let g:loaded_matchit           = 1

"
" for Lang
"
autocmd MyAutoCmd FileType fortran set colorcolumn=5
autocmd MyAutoCmd FileType cpp set ts=4 sts=0 sw=4 noet
