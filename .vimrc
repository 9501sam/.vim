set number relativenumber
set clipboard=unnamed
" set cursorline

" set scroll
set scrolloff=13
" set scroll=5
set mouse=n
nmap <ScrollWheelUp> 7k
nmap <ScrollWheelDown> 7j
nmap <C-k> 7k
nmap <C-j> 7j

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
set csto=0

if filereadable("cscope.out")
   cs add cscope.out
elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
endif
set cscopeverbose

nmap zs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap zg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap zc :cs find c <C-R>=expand("<cword>")<CR><CR>
" nmap zt :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap ze :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap zf :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap zi :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap zd :cs find d <C-R>=expand("<cword>")<CR><CR>


set cinoptions+=:0,t0
" remap
nnoremap <silent> <C-h> gT
nnoremap <silent> <C-l> gt
nnoremap \ :noh<return>
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
Plug 'sudar/vim-arduino-syntax'
call plug#end()
