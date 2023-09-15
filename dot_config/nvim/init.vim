call plug#begin()

Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'itchyny/lightline.vim'
Plug 'lervag/vimtex'
Plug 'easymotion/vim-easymotion'

call plug#end()

filetype plugin indent on

syntax enable

let g:vimtex_view_method = 'skim'
let g:vimtex_compiler_method = 'tectonic'
set ruler
