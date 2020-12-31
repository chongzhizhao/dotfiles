set nocompatible " not vi compatible

syntax on " Turn on syntax highlighting.
set showmatch " show matching braces when text indicator is over them

filetype plugin indent on " enable file type detection
set autoindent

" Disable the default Vim startup message.
set shortmess+=I

set number " show line number
set relativenumber " show relative line number

set hls " highlight search

set autochdir " change directory to the last opened file
set laststatus=2 " always show the status line at the bottom, even if you only have one window open.
set backspace=indent,eol,start

" Use 4 spaces instead of tab when formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" By default, Vim doesn't let you hide a buffer (i.e. have a buffer that isn't
" shown in any window) that has unsaved changes. This is to prevent you from "
" forgetting about unsaved changes and then quitting e.g. via `:qa!`. We find
" hidden buffers helpful enough to disable this protection. See `:help hidden`
" for more information on this.
set hidden

" This setting makes search case-insensitive when all characters in the string
" being searched are lowercase. However, the search becomes case-sensitive if
" it contains any capital letters. This makes searching more convenient.
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Unbind some useless/annoying default key bindings.
nmap Q <Nop> " 'Q' in normal mode enters Ex mode. You almost never want this.

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

" Enable mouse support. You should avoid relying on this too much, but it can
" sometimes be convenient.
set mouse+=a

