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
"disable folding
set nofoldenable  
filetype plugin on 
set termguicolors
"==== For air-line theme ====

set laststatus=2
let g:airline#extensions#tabline#endabled = 1
let g:airline#extensions#tabline#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep  = '|'

set showtabline=2




autocmd VimEnter *
            \   if !argc()
            \ |   Startify
            \ |   NERDTree
            \ | endif
autocmd VimEnter wincmd w
"==== key maping ====="
let mapleader = "'"  
inoremap jk <ESC>
let g:SuperTabDefaultCompletionType = "<c-n>"

  
  " nerd tree map
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree. If a file is specified, move the cursor to its window.
"autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Start NERDTree when Vim starts with a directory argument.
"autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

"==== vim-markdown ====
let g:vim_markdown_toc_autofit=1
let g:vim_markdown_new_list_item_indent = 2


"==== for auto pair plugin ====
au Filetype FILETYPE let b:AutoPairs = {"(":")"}

"=== Prettier

"Allow auto formatting for files on save
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0


"git blamer
"
let g:blamer_enabled = 1
let g:blamer_delay = 0 
let g:blamer_show_in_visual_modes = 0
let g:blamer_prefix = ' > '

"==== key maping ====="
let mapleader = "'"  
inoremap jk <ESC>

  " nerd tree map
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments.
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

"==== vim-markdown ====
let g:vim_markdown_toc_autofit=1
let g:vim_markdown_new_list_item_indent = 2


"==== for auto pair plugin ====
au Filetype FILETYPE let b:AutoPairs = {"(":")"}


if !exists('g:airline_symbols')
  let g:ariline_symbols = {}
endif


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
  
  Plug 'lukas-reineke/indent-blankline.nvim'
  Plug 'jiangmiao/auto-pairs'
  Plug 'preservim/nerdcommenter'
  Plug 'preservim/nerdtree'
  Plug 'yggdroot/leaderf'
  Plug 'dense-analysis/ale'
  Plug 'godlygeek/tabular'
  Plug 'plasticboy/vim-markdown'
  Plug 'vim-pandoc/vim-pandoc'
  Plug 'ervandew/supertab' 
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } 
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'itchyny/vim-cursorword'
  Plug 'kyazdani42/nvim-web-devicons'
  " post install (yarn install | npm install) then load plugin only for editing supported files
  Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install --frozen-lockfile --production',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'svelte', 'yaml', 'html'] }

  Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
  Plug 'EdenEast/nightfox.nvim' 
  Plug 'arcticicestudio/nord-vim'
  Plug 'APZelos/blamer.nvim'
call plug#end()

" :colorscheme nordfox
colorscheme nord

"==== key maping ====="
let mapleader = "'"  
inoremap jk <ESC>

  " nerd tree map
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Start NERDTree and leave the cursor in it.
"autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

let g:NERDTreeDirArrowExpandable = '♚'
let g:NERDTreeDirArrowCollapsible = '➤'



    "=====
    "  nerd tree git extension
    "
    
   let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'✹',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'✭',
                \ 'Renamed'   :'➜',
                \ 'Unmerged'  :'═',
                \ 'Deleted'   :'✖',
                \ 'Dirty'     :'✗',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ } 
let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0
let g:NERDTreeGitStatusShowIgnored = 1 " a heavy feature may cost much more time. default: 0
"every single untracked file under an untracked dir
let g:NERDTreeGitStatusUntrackedFilesMode = 'all' " a heavy feature too. default: normal
" show Clean indicator
let g:NERDTreeGitStatusShowClean = 1 " default: 0
"hide brackets []
"let g:NERDTreeGitStatusConcealBrackets = 1 " default: 0

"NOTICE: DO NOT enable this feature if you have also installed vim-devicons.

"==== vim-markdown ====
let g:vim_markdown_toc_autofit=1
let g:vim_markdown_new_list_item_indent = 2


"==== for auto pair plugin ====
au Filetype FILETYPE let b:AutoPairs = {"(":")"}

