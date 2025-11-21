"   _____       _
"  /  __ \     | |
"  | /  \/ __ _| |_ __ ___
"  | |    / _` | | '_ ` _ \
"  | \__/\ (_| | | | | | | |
"   \____/\__,_|_|_| |_| |_|
"

set background=dark
hi clear

let g:palette = {
    \ 'yellow'        : 220,
    \ 'green'         : 108,
    \ 'red'           :  88,
    \ 'white'         : 253,
    \ 'gray'          : 240,
    \ 'black'         : 235,
    \ 'dark_black'    : 234,
    \ 'blue'          :  25,
    \ 'background'    : "NONE",
    \ 'orange'        : 180,
    \ 'dark_orange'   : 214,
    \ 'bright_orange' : 202,
    \ 'cyan'          : 30,
    \ 'purple'        : 133,
    \ }

function! s:Highlight(syn, fg, bg, term)
    execute 'highlight ' . a:syn . ' ctermfg=' . a:fg . ' ctermbg=' . a:bg . ' cterm=' . a:term
    endfunc

if has("gui_running")
    let g:palette = {
        \ 'yellow'        : '#ffd700',
        \ 'green'         : '#87af87',
        \ 'red'           : '#870000',
        \ 'white'         : '#dadada',
        \ 'gray'          : '#585858',
        \ 'black'         : '#262626',
        \ 'dark_black'    : '#1c1c1c',
        \ 'blue'          : '#005faf',
        \ 'background'    : '#21222c',
        \ 'orange'        : '#d7af87',
        \ 'dark_orange'   : '#ffaf00',
        \ 'bright_orange' : '#ff5f00',
        \ 'cyan'          : '#008787',
        \ 'purple'        : '#af5faf',
        \ }
    function! s:Highlight(syn, guifg, guibg, gui)
        execute 'highlight ' . a:syn . ' guifg=' . a:guifg . ' guibg=' . a:guibg . ' gui=' . a:gui
    endfunc
    if has("gui_win32")
        set guifont=Cascadia\ Code
    endif
endif

let g:colors_name = 'calm'

" Line Number Column
call s:Highlight("LineNr", g:palette.white, "NONE", "BOLD")
call s:Highlight("LineNrAbove", g:palette.gray, g:palette.black, "BOLD")
call s:Highlight("LineNrBelow", g:palette.gray, g:palette.black, "BOLD")

" Netrw
call s:Highlight("netrwClassify", g:palette.white, "NONE", "NONE")
call s:Highlight("netrwComma", g:palette.white, "NONE", "NONE")
call s:Highlight("netrwExe", g:palette.green, "NONE", "NONE")
call s:Highlight("netrwHelpCmd", g:palette.green, "NONE", "NONE")
call s:Highlight("netrwList", g:palette.green, "NONE", "NONE")
call s:Highlight("netrwSymLink", g:palette.green, "NONE", "NONE")
call s:Highlight("netrwVersion", g:palette.green, "NONE", "NONE")
call s:Highlight("Directory", g:palette.purple, "NONE", "NONE")
hi! link netrwComment Comment

" Cursor
call s:Highlight("Cursor", "NONE", g:palette.white, "NONE")
call s:Highlight("CursorColumn", "NONE", g:palette.blue, "NONE")
call s:Highlight("CursorIM", g:palette.black, g:palette.yellow, "NONE")
call s:Highlight("CursorLine", "NONE", g:palette.gray, "NONE")
call s:Highlight("CursorLineNr", g:palette.white, g:palette.black, "BOLD")

call s:Highlight("ColorColumn", "NONE", g:palette.green, "NONE")
call s:Highlight("Comment", g:palette.orange, "NONE", "NONE")
call s:Highlight("Conceal", "NONE", "NONE", "NONE")
call s:Highlight("Conditional", g:palette.dark_orange, "NONE", "NONE")
call s:Highlight("Constant", g:palette.bright_orange, "NONE", "NONE")
call s:Highlight("EndOfBuffer", g:palette.yellow, "NONE", "NONE")
call s:Highlight("Error", g:palette.white, g:palette.red, "reverse")

call s:Highlight("ErrorMsg", g:palette.white, g:palette.red, "NONE")
call s:Highlight("FoldColumn", g:palette.cyan, "NONE", "NONE")
call s:Highlight("Folded", g:palette.blue, g:palette.green, "NONE")
call s:Highlight("Identifier", g:palette.green, "NONE", "NONE")
call s:Highlight("Ignore", g:palette.gray, "NONE", "NONE")
call s:Highlight("Label", g:palette.yellow, "NONE", "NONE")
call s:Highlight("MatchParen", "NONE", g:palette.white, "NONE")

call s:Highlight("ModeMsg", g:palette.white, "NONE", "NONE")
call s:Highlight("MoreMsg", g:palette.green, "NONE", "UNDERLINE")

" Search
call s:Highlight("IncSearch", g:palette.dark_black, g:palette.yellow, "NONE")
hi! link Search IncSearch
call s:Highlight("CurSearch", g:palette.dark_black, g:palette.white, "NONE")

call s:Highlight("NonText", g:palette.orange, "NONE", "NONE")
call s:Highlight("Normal", g:palette.white, g:palette.background, "NONE")
call s:Highlight("Pmenu", g:palette.black, g:palette.white, "NONE")
call s:Highlight("PmenuSbar", "NONE", "NONE", "NONE")
call s:Highlight("PmenuSel", g:palette.cyan, g:palette.white, "NONE",)
call s:Highlight("PmenuThumb", "NONE", g:palette.white, "NONE")
call s:Highlight("PreProc", g:palette.purple, "NONE", "NONE")
call s:Highlight("Question", g:palette.green, "NONE", "NONE")
call s:Highlight("QuickFixLine", g:palette.black, g:palette.purple, "NONE")
call s:Highlight("SignColumn", g:palette.cyan, "NONE", "NONE")
call s:Highlight("Special", g:palette.purple, "NONE", "NONE")
call s:Highlight("SpecialKey", g:palette.cyan, "NONE", "NONE")
call s:Highlight("SpellBad", g:palette.red, "NONE", "UNDERLINE")
call s:Highlight("SpellCap", g:palette.green, "NONE", "UNDERLINE")
call s:Highlight("SpellLocal", g:palette.white, "NONE", "UNDERLINE")
call s:Highlight("SpellRare", g:palette.purple, "NONE", "UNDERLINE")
call s:Highlight("Statement", g:palette.dark_orange, "NONE", "NONE")
call s:Highlight("StatusLine", g:palette.white, g:palette.black, "NONE")
call s:Highlight("StatusLineNC", g:palette.blue, g:palette.black, "NONE")
call s:Highlight("Title", g:palette.purple, "NONE", "NONE")
call s:Highlight("Todo", "NONE", "NONE", "REVERSE")
call s:Highlight("ToolbarButton", g:palette.white, g:palette.blue, "NONE")
call s:Highlight("ToolbarLine", "NONE", "NONE", "NONE")
call s:Highlight("Type", g:palette.blue, "NONE", "NONE")
call s:Highlight("Underlined", "NONE", "NONE", "UNDERLINE")
call s:Highlight("VertSplit", g:palette.white, g:palette.black, "NONE")
call s:Highlight("Visual", "NONE", g:palette.gray, "NONE")
call s:Highlight("VisualNOS", g:palette.cyan, g:palette.white, "NONE")
call s:Highlight("WarningMsg", g:palette.purple, "NONE", "NONE")
call s:Highlight("WildMenu", g:palette.blue, g:palette.yellow, "NONE")
call s:Highlight("debugBreakpoint", g:palette.green, g:palette.blue, "REVERSE")
call s:Highlight("debugPC", g:palette.cyan, g:palette.blue, "REVERSE")

" Vim Documentation
call s:Highlight("helpCommand", g:palette.blue, "NONE", "ITALIC")
call s:Highlight("helpExample", g:palette.green, "NONE", "ITALIC")
call s:Highlight("helpHeadline", g:palette.white, "NONE", "NONE")
call s:Highlight("helpHyperTextEntry", g:palette.dark_orange, "NONE", "NONE")
call s:Highlight("helpHyperTextJump", g:palette.green, "NONE", "UNDERLINE")
call s:Highlight("helpStar", g:palette.gray, "NONE", "ITALIC")
call s:Highlight("helpSectionDelim", g:palette.gray, "NONE", "NONE")
call s:Highlight("helpSpecial", g:palette.yellow, "NONE", "ITALIC")
call s:Highlight("helpURL", g:palette.blue, "NONE", "UNDERLINE")
call s:Highlight("helpOption", g:palette.blue, "NONE", "NONE")

" Vim Diff
call s:Highlight("DiffAdd", g:palette.white, g:palette.green, "NONE")
call s:Highlight("DiffChange", g:palette.white, g:palette.dark_orange, "NONE")
call s:Highlight("DiffText", g:palette.black, g:palette.orange, "NONE")
call s:Highlight("diffDelete", g:palette.red, g:palette.red, "NONE")

hi! link diffIsA WarningMsg
hi! link diffIdentical WarningMsg
hi! link diffBDiffer WarningMsg

hi! link Terminal Normal
hi! link Debug Special
hi! link lCursor Cursor
hi! link CursorLineNr CursorLine
hi! link CursorLineFold CursorLine
hi! link CursorLineSign CursorLine
hi! link StatusLineTerm StatusLine
hi! link StatusLineTermNC StatusLineNC
hi! link TabLine StatusLineNC
hi! link TabLineFill StatusLineNC
hi! link TabLineSel StatusLine
hi! link Boolean Constant
hi! link Character Constant
hi! link Define PreProc
hi! link Delimiter Special
hi! link Exception Statement
hi! link Float Constant
hi! link Function Identifier
hi! link Include PreProc
hi! link Keyword Statement
hi! link Macro PreProc
hi! link Number Constant
hi! link Operator Type
hi! link PreCondit PreProc
hi! link Repeat Statement
hi! link SpecialChar Special
hi! link SpecialComment Special
hi! link StorageClass Type
hi! link String Constant
hi! link Structure Type
hi! link Tag Special
hi! link Typedef Type
hi! link MessageWindow Pmenu
hi! link PopupNotification Todo
