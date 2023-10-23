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

let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_method = 'tectonic'

let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

lua require('init')

set ruler
