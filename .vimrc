"set encoding=utf-8
let $NODE_ENV="test"
let test#strategy = "neovim"

set nocp
set backspace=indent,eol,start
set nocompatible              " be iMproved, required
let mapleader=","
set clipboard=unnamed
" Display tabs and trailing spaces visually
"set list listchars=tab:\ \ ,trail:·

syntax on
"set nowrap       "Don't wrap lines
"set linebreak    "Wrap lines at convenient points
" set tab as 4 spaces
" set background=dark
set textwidth=80
" set colorcolumn=80
" set number
set smarttab
" ================ Folds ============================

set foldmethod=indent   "fold based on indent
set foldnestmax=3       "deepest fold is 3 levels
set nofoldenable        "dont fold by default

" ================ Search ===========================

set incsearch       " Find the next match as we type the search
set hlsearch        " Highlight searches by default
set ignorecase      " Ignore case when searching...
set smartcase       " ...unless we type a capital
set number

filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree.git'
Plugin 'bling/vim-airline'
Plugin 'flazz/vim-colorschemes'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'davidhalter/jedi-vim'
Plugin 'Valloric/YouCompleteMe'
call vundle#end()

syntax on

filetype plugin indent on    " required
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

syntax on
:set noshowmode
nmap <F1> :NERDTreeToggle<CR>
let g:airline_theme='base16'

map i <Up>
map k <Down>
map l <Right>
map j <Left>
map h <Insert>
"map <Insert><Tab><ESC>
let g:ycm_autoclose_preview_window_after_completion=1
