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



"==== For air-line theme ====
"

set laststatus=2
let g:airline#extensions#tabline#endabled = 1
"let g:airline_theme="moloai"

if !exists('g:airline_symbols')
  let g:ariline_symbols = {}
endif

" === key maping ====== "
 let mapleader = "'"  
 inoremap jk <ESC>





"======= for NERDTree ========
"
let g:NERDTreeWinPos = "left"

"Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Start NERDTree and put the cursor back in the other window.
" autocmd VimEnter * NERDTree | wincmd p

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

"==== config for vim-airline theme ====="
set showtabline=2

"===== vim-markdown ====
let g:vim_markdown_toc_autofit=1
let g:vim_markdown_new_list_item_indent = 2

"=== for auto pair plugin ====
au Filetype FILETYPE let b:AutoPairs = {"(":")"}

call plug#begin('~/.vim/plugged')
  Plug 'mhinz/vim-startify'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'sheerun/vim-polyglot'
  " Use release branch (recommend)
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  " Or build from source code by using yarn: https://yarnpkg.com
  Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'} 
  Plug 'scrooloose/nerdtree'
  Plug 'jiangmiao/auto-pairs'
  Plug 'ddollar/nerdcommenter'
  Plug 'yggdroot/leaderf'
  Plug 'dense-analysis/ale'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'vim-pandoc/vim-pandoc'
  "Plug 'gabrielelana/vim-markdown'
  Plug 'ervandew/supertab' 
  Plug 'ms-jpq/chadtree', {'branch': 'chad', 'do': 'python3 -m chadtree deps'}

  

call plug#end()

