if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

call plug#begin(stdpath('data') . '/plugged')

Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'
Plug 'tyru/caw.vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'osyo-manga/vim-over'
Plug 'tpope/vim-fugitive'
" Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'kassio/neoterm'
Plug 'LeafCage/yankround.vim'
Plug 'mattn/emmet-vim'
Plug 'osyo-manga/vim-anzu'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'ap/vim-css-color'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ryanoasis/vim-devicons'
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production', 'for': [ 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'less', 'scss', 'css', 'json', 'graphql', 'markdown' ]}

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'ruanyl/vim-gh-line'

" new powerline
Plug 'hoob3rt/lualine.nvim'
" new completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}


" Plug 'milkypostman/vim-togglelist'
" Plug 'junegunn/vim-easy-align'
" Plug 'majutsushi/tagbar' " 使ってないので引退
" Plug 'neomake/neomake' " nvim-lspconfigで代替中
" Plug 't9md/vim-choosewin'
" Plug 'Shougo/context_filetype.vim'
" Plug 'jiangmiao/auto-pairs'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
" Plug 'Shougo/deoplete-lsp'
" Plug 'autozimu/LanguageClient-neovim', {
    "\ 'branch': 'next',
    "\ 'do': 'bash install.sh',
    "\ }
" Plug 'ujihisa/neco-look'
" Plug 'neovim/nvim-lspconfig'
" Plug 'Shougo/neosnippet.vim'
" Plug 'Shougo/neosnippet-snippets'
" Plug 'fszymanski/deoplete-emoji'

" Plug 'HerringtonDarkholme/yats.vim'
" Plug 'maxmellon/vim-jsx-pretty' " indentで悪さをしているので消す、代わりにtypescript-vimとvim-js-indentを入れた
" Plug 'hail2u/vim-css3-syntax'
" " Plug 'posva/vim-vue'
" Plug 'leafOfTree/vim-vue-plugin'
" Plug 'elzr/vim-json'
" Plug 'rhysd/vim-gfm-syntax'
" Plug 'fatih/vim-go', { 'for': 'go' }
" Plug 'tikhomirov/vim-glsl', { 'for': 'glsl' }
" Plug 'dag/vim-fish', { 'for': 'fish' }
" Plug 'rust-lang/rust.vim', { 'for': 'rust' }
" Plug 'ekalinin/Dockerfile.vim', { 'for': 'dockerfile' }
" Plug 'wavded/vim-stylus'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'jxnblk/vim-mdx-js'
" Plug 'jason0x43/vim-js-indent'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'gf3/peg.vim'
" Plug 'cespare/vim-toml'
" Plug 'evanleck/vim-svelte', {'branch': 'main'}

call plug#end()

runtime! option.vim
runtime! keymap.vim
runtime! plugins/main.vim
runtime! plugins/colorscheme.vim
runtime! plugins/defx.vim
runtime! plugins/coc.vim
runtime! plugins/lualine.vim
runtime! plugins/treesitter.vim
" runtime! plugins/deoplete.vim
" runtime! plugins/nvim-lspconfig.vim
" runtime! plugins/lc-nvim.vim
" runtime! plugins/lang.vim
" runtime! plugins/lint.vim " nvim-lspconfigで代替中
