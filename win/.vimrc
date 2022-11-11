set nocompatible
set mouse = a
set showmode
set showcmd
syntax on
set foldenable
set encoding = utf-8
set t_Co=256
set noswapfile
set noerrorbells
set clipboard=unnamedplusset

set tabstop = 4
set smarttab
set shiftwidth = 4
set autoindent
set smartindent
set number
set relativenumber
set cursorline
set undofile

set showmatch
set hlsearch
set incsearch
set ignorecase
set smartcase

""" basic mappings-----------------------
let mapleader=";"
inoremap jk <Esc>
inoremap <C-h> <left>
inoremap <C-j> <down>
inoremap <C-k> <up>
inoremap <C-l> <right>

" nnoremap <C-h> <C-w>h
" nnoremap <C-j> <C-w>j
" nnoremap <C-k> <C-w>k
" nnoremap <C-l> <C-w>l



""" I:  行首插入
""" A:  行尾插入
""" dw: 删除光标后单词(不常用，同时会删除空格)
""" cw: 删除光标后单次,进入Insert(常用)
""" A: 行尾插入
""" A: 行尾插入
""" A: 行尾插入

""" split window -----------------
""" <C-w>s: 分屏到上下
""" <C-w>v: 分屏到左右
""" <C-w>c: 关闭当前window
""" <C-w>h/j/k/l: 切换window
