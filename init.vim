"=== basic config ====

set number
set wrap
set softtabstop=2
set autoindent
set showmatch
set mouse=a
syntax on
set hlsearch
set ignorecase
set hidden

filetype plugin on 


"==== For air-line theme ====

set laststatus=2
let g:airline#extensions#tabline#endabled = 1
let g:airline#extensions#tabline#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep  = '|'

set showtabline=2


if !exists('g:airline_symbols')
  let g:ariline_symbols = {}
endif

"==== key maping ====="
let mapleader = "'"  
inoremap jk <ESC>


"==== vim-markdown ====
let g:vim_markdown_toc_autofit=1
let g:vim_markdown_new_list_item_indent = 2


"==== for auto pair plugin ====
au Filetype FILETYPE let b:AutoPairs = {"(":")"}



"==== plug-in ====


call plug#begin('~/.vim/plugged')
  Plug 'mhinz/vim-startify'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sheerun/vim-polyglot'
  " Use release branch (recommend)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Or build from source code by using yarn: https://yarnpkg.com
  "Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'} 
  

  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
  Plug 'yggdroot/leaderf'
  Plug 'dense-analysis/ale'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'ervandew/supertab' 
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'itchyny/vim-cursorword'

call plug#end()

