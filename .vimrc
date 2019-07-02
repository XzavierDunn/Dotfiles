set nocompatible
syntax enable
filetype indent plugin on 

let mapleader=","
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow splitright

set path+=**
set wildmenu

" command! MakeTags !ctags -R .
" NOW WE CAN:
" - Use ^] to jump to tag under cursor
" - Use g^] for ambiguous tags
" - Use ^t to jump back up the tag stack

" Tweaks for browsing
let g:netrw_banner=0        " disable annoying banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

set hidden
set noswapfile

set showcmd
set ruler
set scrolloff=2
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
set nobackup
set bg=dark

" Handles line Numbering, and color for said lines
set number relativenumber
set numberwidth=3
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

