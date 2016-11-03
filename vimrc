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
set guifont=Sauce\ Code\ Powerline:h15
set linespace=2                    " line height
set synmaxcol=1024                 " don't try to highlight really long lines
set cursorline                     " highlight current line
set cursorcolumn                   " highlight current column
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
set ignorecase                    " case-insensitive search
set smartcase                     " case-sensitive if you use a cap
set gdefault                      " global search by default
set history=100                   " increase command and search history
set undolevels=1000               " increase undo level

"" Ag - lowercase and no auto-open
ca Ag Ag!

" The Silver Searcher
if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" http://blog.mikecordell.com/2015/01/27/better-fuzzy-search-with-ctrl-p-in-vim.html
if executable('matcher')
  let g:ctrlp_match_func = { 'match': 'GoodMatch' }

  function! GoodMatch(items, str, limit, mmode, ispath, crfile, regex)

    " Create a cache file if not yet exists
    let cachefile = ctrlp#utils#cachedir().'/matcher.cache'
    if !( filereadable(cachefile) && a:items == readfile(cachefile) )
      call writefile(a:items, cachefile)
    endif
    if !filereadable(cachefile)
      return []
    endif

    " a:mmode is currently ignored. In the future, we should probably do
    " something about that. the matcher behaves like 'full-line'.
    let cmd = 'matcher --limit '.a:limit.' --manifest '.cachefile.' '
    if !( exists('g:ctrlp_dotfiles') && g:ctrlp_dotfiles )
      let cmd = cmd.'--no-dotfiles '
    endif
    let cmd = cmd.a:str

    return split(system(cmd), "\n")

  endfunction
end

"" Invisible characters
set list                        " show invisible characters
set listchars=tab:▸\ ,trail:•,extends:❯,precedes:❮,eol:¬
set showbreak=↳

set number                      " show line numbers
set scrolloff=4                 " keep 4 lines off the edges of the screen when scrolling
set hidden                      " allow files to be hidden in buffer
set autoread                    " reload externally edited files

let g:netrw_nobeval = 1         " Disable netrw eval balloons

" Status line
set laststatus=2

map <C-n> :NERDTreeToggle<CR>
