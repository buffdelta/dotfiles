let g:lightline = {
        \ 'colorscheme': 'srcery_drk',
        \ 'active': {
        \       'left': [ [ 'mode', 'paste' ],
        \                         [ 'readonly', 'filename', 'gitbranch', 'charvalue', 'modified' ] ]
        \       },
        \ 'inactive': {
        \       'left': [ [ 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \       'gitbranch': 'FugitiveHead'
        \ },
        \ }

map <C-w>t :tab terminal<CR>

" Since we are using lightline, this will disable prompts of which mode we are in
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

" Remove vertical split pane highlighting
highlight VertSplit cterm=NONE

" Set line number to be gray
highlight LineNr ctermfg=grey

" Set current line number to be 

" Blink every how many tenths of a second
set mat=2

" Syntax highlighting
syntax enable

" Auto indent
set ai
" Smart indent
set si

" Wrap lines
set wrap

" Coverts tabs into spaces
set expandtab

" Always show status line
set laststatus=2

" How long is tab
set tabstop=4

" How long is Shift-<, or Shift->
set shiftwidth=4

" If filetype is text or markdown, set spellcheck
autocmd Filetype text setlocal spell
autocmd Filetype markdown setlocal spell

set cursorline
set cursorlineopt=number

" Remove tilde characters at the end of the buffer
set fillchars=eob:\ 
