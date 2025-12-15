"
" caw.vim
"
nmap <c-c> <Plug>(caw:hatpos:toggle)
vmap <c-c> <Plug>(caw:hatpos:toggle)

"
" anzu
"
" mapping
nmap n <Plug>(anzu-n-with-echo)
nmap N <Plug>(anzu-N-with-echo)
nmap * <Plug>(anzu-star-with-echo)
nmap # <Plug>(anzu-sharp-with-echo)
" clear status
nmap <Esc><Esc> <Plug>(anzu-clear-search-status)

"
" yankround
"
nmap p <Plug>(yankround-p)
xmap p <Plug>(yankround-p)
nmap P <Plug>(yankround-P)
nmap gp <Plug>(yankround-gp)
xmap gp <Plug>(yankround-gp)
nmap gP <Plug>(yankround-gP)
nmap <C-p> <Plug>(yankround-prev)
nmap <C-n> <Plug>(yankround-next)

"
" vim-togglelist
"
nmap <script> <silent> <C-l> :call ToggleLocationList()<CR>
nmap <script> <silent> <C-q> :call ToggleQuickfixList()<CR> " Bug: not work in neovim

"
" vim-easy-align
"
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

"
" vim-indent-guides
"
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

"
" neoterm
"
nnoremap <silent> ,rc :TREPLSendFile<cr>
nnoremap <silent> ,rl :TREPLSendLine<cr>
vnoremap <silent> ,rl :TREPLSendSelection<cr>
nnoremap <silent> vt :vert Tnew<cr>
nnoremap <silent> st :belowright Tnew<cr>
nnoremap <silent> vs :terminal<cr>

"
" nvim-telescope
"
" nnoremap <C-s> <cmd>Telescope find_files<cr>

"
" vim-auto-save
"
" let g:auto_save = 1  " enable AutoSave on Vim startup
" let g:auto_save_in_insert_mode = 0  " do not save while in insert mode
" let g:auto_save_silent = 1  " do not display the auto-save notification

"
" vim-choosewin
"
" invoke with '-'
nmap  -  <Plug>(choosewin)
" if you want to use overlay feature
let g:choosewin_overlay_enable = 1

"
" fzf
"
let $FZF_DEFAULT_COMMAND = 'ag --hidden --ignore .git -l -g ""'
map <C-s> :FZF<CR>

"
" flutter-tools
"
" lua << EOF
"   require("flutter-tools").setup {} -- use defaults
" EOF
" coc-flutterを使わない場合に使う

"
" hlchunk.nvim
"
" lua << EOF
"   require("hlchunk").setup({})
"   local default_conf = {
"       priority = 15,
"       style = {
"           { fg = "#806d9c" },
"           { fg = "#c21f30" },
"       },
"       use_treesitter = true,
"       chars = {
"           horizontal_line = "─",
"           vertical_line = "│",
"           left_top = "╭",
"           left_bottom = "╰",
"           right_arrow = ">",
"       },
"       textobject = "",
"       max_file_size = 1024 * 1024,
"       error_sign = true,
"       -- animation related
"       duration = 200,
"       delay = 300,
"   }
" EOF

"
" indent-blankline.nvim
"

lua << EOF
  require("ibl").setup()
EOF

"
" HiPhish/rainbow-delimiters.nvim
"
let g:rainbow_delimiters = {
    \ 'strategy': {
        \ '': rainbow_delimiters#strategy.global,
        \ 'vim': rainbow_delimiters#strategy.local,
    \ },
    \ 'query': {
        \ '': 'rainbow-delimiters',
        \ 'lua': 'rainbow-blocks',
    \ },
    \ 'priority': {
        \ '': 110,
        \ 'lua': 210,
    \ },
    \ 'highlight': [
        \ 'RainbowDelimiterViolet',
        \ 'RainbowDelimiterBlue',
        \ 'RainbowDelimiterGreen',
        \ 'RainbowDelimiterCyan',
        \ 'RainbowDelimiterYellow',
        \ 'RainbowDelimiterOrange',
        \ 'RainbowDelimiterRed',
    \ ],
\ }
