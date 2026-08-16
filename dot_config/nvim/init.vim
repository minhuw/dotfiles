" Bootstrap vim-plug when it is missing.
let s:data_dir = stdpath('data')
if empty(glob(s:data_dir . '/site/autoload/plug.vim'))
  silent execute '!curl -fLo ' . s:data_dir . '/site/autoload/plug.vim --create-dirs '
        \ . 'https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'unblevable/quick-scope'
Plug 'easymotion/vim-easymotion'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

call plug#end()

filetype plugin indent on
syntax enable

set number
set ruler
set cursorline
set wrap
set visualbell
set title
set mouse=a
set termguicolors
set laststatus=2
set noshowmode
set ignorecase
set smartcase
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamedplus
set undofile
set signcolumn=yes
set splitright
set splitbelow

let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_method = 'tectonic'

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
