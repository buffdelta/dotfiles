" Status line plugin format
let g:lightline = {
        \ 'colorscheme': 'srcery_drk',
        \ 'active': {
        \       'left': [ [ 'mode', 'paste' ],
        \                         [ 'readonly', 'filename', 'charvalue', 'modified' ] ]
        \       }
        \ }

" Set width of shifting tabs to 4
set shiftwidth=4

" Show the title
set title

" Current line is zero, the rest of the line numbers are relative to it
set relativenumber

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
set ai
" Smart indent
set si

" Wrap lines
set wrap

" Always show status line
set laststatus=2

" Set width of tab to four characters
set tabstop=4

" Backspacing over everything in insert mode
set backspace=indent,eol,start

" Set status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l\ \ Column:\ %c\ ASCII:\ %b

" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction
