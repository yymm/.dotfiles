if &compatible
  set nocompatible
endif

augroup MyAutoCmd
  autocmd!
augroup END

call plug#begin(stdpath('data') . '/plugged')

Plug 'cocopon/iceberg.vim'
Plug 'morhetz/gruvbox'
Plug 'scrooloose/nerdcommenter'
Plug 'bronson/vim-trailing-whitespace'
Plug 'osyo-manga/vim-over'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'kassio/neoterm'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'milkypostman/vim-togglelist'
Plug 'LeafCage/yankround.vim'
Plug 'junegunn/vim-easy-align'
Plug 'mattn/emmet-vim'
Plug 'majutsushi/tagbar'
Plug 'osyo-manga/vim-anzu'
Plug 'neomake/neomake'
" Plug 'vim-syntastic/syntastic'
" Plug 'w0rp/ale'

Plug 'prabirshrestha/async.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'prabirshrestha/asyncomplete-emoji.vim'
Plug 'prabirshrestha/asyncomplete-file.vim'
Plug 'prabirshrestha/asyncomplete-buffer.vim'
if has('python3')
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'prabirshrestha/asyncomplete-ultisnips.vim'
endif

Plug 'HerringtonDarkholme/yats.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'hail2u/vim-css3-syntax'
Plug 'posva/vim-vue'
Plug 'elzr/vim-json'
Plug 'rhysd/vim-gfm-syntax'
Plug 'tikhomirov/vim-glsl', { 'for': 'glsl' }
Plug 'dag/vim-fish', { 'for': 'fish' }
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'ekalinin/Dockerfile.vim', { 'for': 'dockerfile' }
Plug 'prettier/vim-prettier', {
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html']
  \ }

call plug#end()

runtime! option.vim
runtime! keymap.vim
runtime! plugins/main.vim
runtime! plugins/colorscheme.vim
runtime! plugins/lang.vim
runtime! plugins/lsp.vim
runtime! plugins/lint.vim
