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

" indent plugin
" Plug 'nathanaelkane/vim-indent-guides'
" Plug 'shellRaining/hlchunk.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'

Plug 'kassio/neoterm'
Plug 'LeafCage/yankround.vim'
Plug 'mattn/emmet-vim'
Plug 'osyo-manga/vim-anzu'

" fuzzy finder
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'ap/vim-css-color'

" filer
" Plug 'kyazdani42/nvim-web-devicons' " for file icons
" Plug 'kyazdani42/nvim-tree.lua'

Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ryanoasis/vim-devicons'
Plug 'kristijanhusak/defx-git'
Plug 'kristijanhusak/defx-icons'

Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production', 'for': [ 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'less', 'scss', 'css', 'json', 'graphql', 'markdown' ]}

" file tree
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'HiPhish/rainbow-delimiters.nvim'
Plug 'ruanyl/vim-gh-line'

" new powerline
Plug 'hoob3rt/lualine.nvim'
" new completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'jparise/vim-graphql'

Plug 'hashivim/vim-terraform'

" debugger
Plug 'mfussenegger/nvim-dap'

" flutter
" Plug 'nvim-lua/plenary.nvim'
" Plug 'stevearc/dressing.nvim' " optional for vim.ui.select
" Plug 'nvim-flutter/flutter-tools.nvim'
" coc-flutterを使わない場合に使う

" Copilot
Plug 'github/copilot.vim'

call plug#end()

runtime! option.vim
runtime! keymap.vim
runtime! plugins/main.vim
runtime! plugins/colorscheme.vim
runtime! plugins/defx.vim
" runtime! plugins/nvim-tree.vim
runtime! plugins/coc.vim
runtime! plugins/lualine.vim
runtime! plugins/treesitter.vim
" runtime! plugins/deoplete.vim
" runtime! plugins/nvim-lspconfig.vim
" runtime! plugins/lc-nvim.vim
" runtime! plugins/lang.vim
" runtime! plugins/lint.vim " nvim-lspconfigで代替中
