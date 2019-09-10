" Make Sure vim plug installed if not, Installs
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
set nocompatible

" List of all plugins
call plug#begin()
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'ludovicchabant/vim-gutentags'
Plug 'sheerun/vim-polyglot'
call plug#end()

" NERDTree Binds
nmap <C-b> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '*'
let g:NERDTreeDirArrowCollapsible = '-'
" Opens NT if you open a dir with "vim somedir/"
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | endif
" Quits if nerdtree is only open window
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" General Binds
set nocompatible
syntax enable
filetype indent plugin on

let mapleader=","
nnoremap <leader>o :setlocal spell! spelllang=en_us<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow splitright
set path+=**
set wildmenu
set wildmenu
set wildmode=longest,list
set scrolloff=5
set incsearch

" Formating//Syntax//tab/space interaction
set autoindent
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

" Misc quality of life stuff
set encoding=utf-8
set history=1000
set bg=dark
set hidden
set nobackup
set noswapfile
set noruler
set noshowcmd
set laststatus=0
"set shortmess=F

" Handles line Numbering, and color for said lines
set number relativenumber
set numberwidth=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE
" Red block if you are over 80
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

