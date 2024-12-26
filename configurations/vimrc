"--------------------------------------"
"   _   _ ________  _________  _____   "
"  | | | |_   _|  \/  || ___ \/  __ \  "
"  | | | | | | | .  . || |_/ /| /  \/  "
"  | | | | | | | |\/| ||    / | |      "
"  \ \_/ /_| |_| |  | || |\ \ | \__/\  "
"   \___/ \___/\_|  |_/\_| \_| \____/  "
"                                      "
"--------------------------------------"

set t_Co=256

set hidden

" Map keyboard combo, left-control, w, t to create a new terminal window
map <C-w>t :tab terminal<CR>

" Terminal accerleration
set ttyfast

" Since we are using airline, this will disable prompts of which mode we are in
set noshowmode

" Backspace over everything
set backspace=indent,eol,start

" Show the title
set title

" Current line is current line number, the rest of the line numbers are relative to it
set number relativenumber

" Make number column default a width two
set numberwidth=2

" Display a list of possible commands/attributes when tab is pressed
set wildmenu

" Always show current position
set ruler

" Ignore case while searching
set ignorecase

" Be smart about cases when searching
set smartcase

" Highlist search hits
set hlsearch

" Search similar to browsers
set incsearch

" Show matching brackets when hovering over a bracket
set showmatch

" Blink every how many tenths of a second
set mat=2

" Syntax highlighting
syntax enable

" Auto indent
set autoindent
" Smart indent
set smartindent

" Wrap lines
set nowrap

" Coverts tabs into spaces
set expandtab

" How long is tab
set tabstop=4

" How long is Shift-<, or Shift->
set shiftwidth=4

" Highlight current line/line-number
set cursorline

" Remove tilde characters at the end of the buffer
set fillchars=eob:\

" Explicitly set vertical split character
set fillchars+=vert:\|

colorscheme calm

" Always show status line
set laststatus=2

let g:airline_theme='calm'
let g:airline#extensions#tabline#enabled = 1

" If filetype is text or markdown, set spellcheck
autocmd Filetype text setlocal spell
autocmd Filetype markdown setlocal spell
