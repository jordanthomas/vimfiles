execute pathogen#infect()
let mapleader=","
set nocompatible
set encoding=utf-8
set showcmd                      " display incomplete command
set ttyfast                      " optimize for fast terminal
set lazyredraw                   " dont redraw during macros

set directory=~/.vim/tmp//,/tmp  " temp directory
filetype plugin indent on        " load file type plugins + indentation

set clipboard=unnamed            " Use system clipboard (compiled with +clipboard)

"" Solarized
let g:solarized_termtrans = 1
set background=dark
colorscheme solarized
call togglebg#map("<F5>")

"" Style
syntax enable
set guifont=Sauce\ Code\ Powerline\ Light:h15
set linespace=2
set antialias
set synmaxcol=1024                 " don't try to highlight really long lines
let g:airline_powerline_fonts = 1
let g:indentLine_char = '│'

"" Whitespace
set wrap                          " wrap lines
set tabstop=2 shiftwidth=2        " a tab is two spaces
set expandtab                     " use spaces, not tabs
set backspace=indent,eol,start    " backspace through everything in insert mode

"" Searching
set hlsearch                      " highlight matches
set incsearch                     " incremental searching
set ignorecase                    " searches are case insensitive...
set smartcase                     " ... unless they contain at least one capital letter
set gdefault                      " have global flag on by default
set history=1000                  " remember more commands and search history
set undolevels=1000               " use many muchos levels of undo

"" CtrlP
let g:ctrlp_user_command = {
  \ 'types': {
    \ 1: ['.git', 'cd %s && git ls-files --cached --exclude-standard --others']
    \ },
  \ 'fallback': 'find %s -type f'
  \ }

"" Ag - lowercase and no auto-open
cnoremap ag Ag!

"" Invisible characters
set list                        " show invisible characters
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮,eol:¬
set showbreak=↪\ 

set number                      " show line numbers
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set hidden                      " allow files to be hidden in buffer
set autoread                    " reload externally edited files

let g:netrw_nobeval = 1         " Disable netrw eval balloons

" Status line
set laststatus=2
