set nocompatible " not vi compatible
let mapleader=" " " leader key is space
syntax on " Turn on syntax highlighting.
set showmatch " show matching braces when text indicator is over them
set hidden " enable hiding buffers with unsaved changes
filetype plugin indent on " enable file type detection
set autoindent
set shortmess+=I " disable the default Vim startup message.
set number " show line number
set relativenumber " show relative line number
set history=8192 " more history
set hls " highlight search
set scrolloff=5 " show lines above and below cursor (when possible)
set autochdir " change directory to the last opened file
set laststatus=2 " always show the status line at the bottom, even if you only have one window open.
set backspace=indent,eol,start
set colorcolumn=80 " try not to exceed 80 characters in a single line of code

" Use 4 spaces instead of tab when formatting
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

" Smart case-sensitive search
set ignorecase
set smartcase
set incsearch " enable searching as you type

" Disable audible bell because it's annoying.
set noerrorbells visualbell t_vb=

set mouse+=a " enable mouse mode (scrolling, selection, etc)
if &term =~ '^screen'
    " tmux knows the extended mouse mode
    set ttymouse=xterm2
endif

" Folding
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
" space open/closes folds
" nnoremap <space> za
set foldmethod=indent   " fold based on indent level
" This is especially useful for me since I spend my days in Python.
" Other acceptable values are marker, manual, expr, syntax, diff.
" Run :help foldmethod to find out what each of those do.

" Undo
set undofile " Maintain undo history between sessions
set undodir=~/.vim/undodir

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

" Color scheme
if has('gui_running')
    colorscheme solarized
    let g:lightline = {'colorscheme': 'solarized'}
elseif &t_Co < 256
    colorscheme default
    set nocursorline " looks bad in this mode
else
    set background=dark
    let g:solarized_termcolors=256 " instead of 16 color with mapping in terminal
    colorscheme solarized
    " customized colors
    highlight SignColumn ctermbg=234
    highlight StatusLine cterm=bold ctermfg=245 ctermbg=235
    highlight StatusLineNC cterm=bold ctermfg=245 ctermbg=235
    let g:lightline = {'colorscheme': 'dark'}
    highlight SpellBad cterm=underline
    " patches
    highlight CursorLineNr cterm=NONE
endif

" Plugin configs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" airline
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.colnr = ' ㏇:'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '㏑'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = 'Ɇ'
let g:airline_symbols.whitespace = 'Ξ'
" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ' :'
let g:airline_symbols.dirty='⚡'
" airline extensions
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_tab_count = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'
"let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#show_tab_nr = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " tab number
"let g:airline#extensions#tabline#excludes = ['branches', 'index']
"let g:airline#extensions#tabline#buffer_idx_mode = 1

" undotree
nnoremap <Leader>u :UndotreeToggle<CR>

" nerdtree
nnoremap <Leader>n :NERDTreeToggle<CR>
nnoremap <Leader>f :NERDTreeFind<CR>

" cscope
set cscoperelative
