" Plugin configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 2 " tab number
"let g:airline#extensions#tabline#excludes = ['branches', 'index']
"let g:airline#extensions#tabline#buffer_idx_mode = 1

set nocompatible " not vi compatible

syntax on " Turn on syntax highlighting.
set showmatch " show matching braces when text indicator is over them

filetype plugin indent on " enable file type detection
set autoindent

" Disable the default Vim startup message.
set shortmess+=I

set number " show line number
set relativenumber " show relative line number
set history=8192 " more history
set hls " highlight search
set scrolloff=5 " show lines above and below cursor (when possible)
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

" Smart case-sensitive search
set ignorecase
set smartcase

" Enable searching as you type, rather than waiting till you press enter.
set incsearch

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

set mouse+=a " enable mouse mode (scrolling, selection, etc)
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
" nnoremap <space> za
set foldmethod=indent   " fold based on indent level
" This is especially useful for me since I spend my days in Python.
" Other acceptable values are marker, manual, expr, syntax, diff.
" Run :help foldmethod to find out what each of those do.

" open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" unbind keys
map <C-a> <Nop>
map <C-x> <Nop>
nmap Q <Nop>

" read pdf files as text files
:command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> -
" :command! -complete=file -nargs=1 Rpdf :r !pdftotext -nopgbrk <q-args> - |fmt -csw78
