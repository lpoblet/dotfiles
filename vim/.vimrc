" Ensure Vim uses filetype plugins
filetype plugin on

" Enable indentation
filetype indent on

" Enable auto-indentation
set autoindent

" Basic settings
set nocompatible
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
set smartindent
set scrolloff=3
set wildmenu
set background=dark

" Turn on syntax highlighting
syntax on

" Set the default indentation to 2 spaces for all files
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Highlight trailing whitespace in all files
autocmd BufRead,BufNewFile * match Error /\s\+$/

" Set backspace so it acts more intuitively
set backspace=indent,eol,start

" Remember cursor position
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | execute "normal! g`\"" | endif
endif

" Remappings
let mapleader=" "
imap jj <ESC>
imap kk <ESC>
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
