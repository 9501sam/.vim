set number
set clipboard=unnamed
" set cursorline
set scrolloff=13
set noswapfile

" search
set hlsearch
" set ignorecase
set incsearch

" tab and space
set tabstop=4
set shiftwidth=4
set expandtab

" tab
set showtabline=4
set splitbelow
set splitright

" color
syntax on
" colorscheme darkblue

" filetype
filetype on
filetype indent on
filetype plugin on

" ctags
" sudo apt install ctags
set cscopetag

set cinoptions+=:0,t0
" remap
nnoremap <silent> <C-h> gT
nnoremap <silent> <C-l> gt

nnoremap <silent> <tab> :NERDTreeToggle<Enter>
let NERDTreeMinimalUI=1
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
let NERDTreeRespectWildIgnore=1

let g:go_def_mode='gopls'
let g:go_info_mode='gopls'

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()
