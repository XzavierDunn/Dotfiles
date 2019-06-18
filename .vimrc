" Makes vim better I guess?? less poo poo status more big brain mode
set nocompatible

" Highlights SYNTAX 
syntax enable

" Combos 
" filetype on 'detection'
" filetype plugin on 'plugin'
" filetype indent on 'indent'
" Into one line. Detection lets vim detect filetypes for setting
" syntax highlighting. When plugin is on it makes it so the 
" plugin file is loaded when whatever file you're editing is edited.
" Indent loads 'indent.vim' on runtimepath if ones detected for the
" file type.
filetype indent plugin on 

" mapleader set to ','
" nnoremap sets key mappings for easy navigation between splits
let mapleader=","
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" vim defaults that splits the pane
set splitbelow splitright

set path+=**

" Used for command line completion 
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

" Used to allow vim to abandon a buffer when editing another file
set hidden
" Disables swap files
set noswapfile

" Shows the command in the bottom bar 
set showcmd

" Always show cursor position
set ruler

" Sets number of lines above and below the cursor
set scrolloff=2

" Incremental search that shows partial matches
set incsearch

" Formating//Syntax//tab/space interaction

" auto indents
set autoindent

" tabs stop at 4 spaces
set tabstop=4

" expands tabs
set expandtab

" on tab insert 4 spaces
set shiftwidth=4

" when you delete a tab it deletes the last 4 spaces instead of 1
set softtabstop=4

" Misc quality of life stuff
" sets encoding
set encoding=utf-8

" saves history up to 1000
set history=1000

" Deletes backup files immediately
set nobackup

" sets background to dark
set bg=dark

" Handles line Numbering, and color for said lines
" sets the number next to the cursor the actual line num
set number relativenumber

" sets the number column width
set numberwidth=3

" sets colors
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

" highlights the current line
set cursorline
