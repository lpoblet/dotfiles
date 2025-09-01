" Basic settings
set nocompatible
syntax on
set encoding=utf-8
set number
set relativenumber
set ruler
set laststatus=2
set showmode
set splitbelow
set splitright
set incsearch
set ignorecase
set smartcase
set showmatch
set hidden
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smartindent
set scrolloff=3
set wildmenu
set background=dark

" Remappings
let mapleader=" "
imap jj <ESC>
inoremap ( ()<ESC>hli
inoremap { {}<ESC>hli
inoremap [ []<ESC>hli
inoremap ' ''<ESC>hli
inoremap " ""<ESC>hli
inoremap ` ``<ESC>hli
"nnoremap ; :
"nnoremap : ;

" Visual mode indenting
vnoremap > >gv
vnoremap < <gv
