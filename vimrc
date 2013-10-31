execute pathogen#infect()
set nocompatible
set encoding=utf-8
set showcmd                      " display incomplete command
set ttyfast                      " optimize for fast terminal
set lazyredraw                   " dont redraw during macros

set directory=~/.vim/tmp//,/tmp  " temp directory
filetype plugin indent on        " load file type plugins + indentation

set clipboard=unnamed            " Use system clipboard (compiled with +clipboard)

"" Style
syntax enable
colorscheme solarized
set background=dark
set guifont=Source\ Code\ Pro\ Light:h14
set linespace=2
set synmaxcol=256               " don't try to highlight long lines


"" Whitespace
set wrap                        " wrap lines
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter
set gdefault                    " have :s///g flag by default on

set history=1000                " remember more commands and search history
set undolevels=1000             " use many muchos levels of undo

"" Invisible characters
set list                        " show invisible characters
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮,eol:¬
set showbreak=↪\ 

set number                      " show line numbers
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set hidden                      " allow files to be hidden in buffer
set autoread                    " reload externally edited files

" Status line
set laststatus=2
set statusline=
set statusline+=%2*
set statusline+=\ %n\                 " buffer number
set statusline+=%1*
set statusline+=\ %<%f\               " filename
set statusline+=\ %=\ Line:\ %l:%c    " row:column number
set statusline+=\ %P                  " top/bot
set statusline+=\ %m%r%w\             " modified?

hi User1 guifg=#657b83  guibg=#094454
hi User2 guifg=#094454  guibg=#657b83

let mapleader=","
