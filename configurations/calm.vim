"   _____       _
"  /  __ \     | |
"  | /  \/ __ _| |_ __ ___
"  | |    / _` | | '_ ` _ \
"  | \__/\ (_| | | | | | | |
"   \____/\__,_|_|_| |_| |_|
"

set background=dark
hi clear

let g:pallete = {
    \ 'yellow'     : 220,
    \ 'green'      : 108,
    \ 'red'        :  88,
    \ 'white'      : 253,
    \ 'gray'       : 240,
    \ 'black'      : 235,
    \ 'dark_black' : 234,
    \ }

let g:colors_name = 'calm'

function! s:Highlight(syn, fg, bg = "NONE", term = "NONE")
    execute 'highlight ' . a:syn . ' ctermfg=' . a:fg . ' ctermbg=' . a:bg . ' cterm=' . a:term
endfunc

" Line Number Column
call s:Highlight("LineNr", g:pallete.white)
call s:Highlight("LineNrAbove", g:pallete.gray, g:pallete.black)
call s:Highlight("LineNrBelow", g:pallete.gray, g:pallete.black)

" Netrw
call s:Highlight("netrwClassify", g:pallete.white)
call s:Highlight("netrwComma", g:pallete.white)
call s:Highlight("netrwExe", g:pallete.green)
call s:Highlight("netrwHelpCmd", g:pallete.green)
call s:Highlight("netrwList", g:pallete.green)
call s:Highlight("netrwSymLink", "30")
call s:Highlight("netrwVersion", g:pallete.green)
call s:Highlight("Directory", "219")
hi! link netrwComment Comment

" Cursor
call s:Highlight("Cursor", "NONE")
call s:Highlight("CursorColumn", "NONE", "25")
call s:Highlight("CursorIM", "16", "220")
call s:Highlight("CursorLine", "NONE", "238")
call s:Highlight("CursorLineNr", g:pallete.white, "90")

call s:Highlight("ColorColumn", "NONE", "90")
call s:Highlight("Comment", "180")
call s:Highlight("Conceal", "NONE")
call s:Highlight("Conditional", "214")
call s:Highlight("Constant", "202")
call s:Highlight("EndOfBuffer", g:pallete.yellow)
call s:Highlight("Error", "209", "18", "reverse")
call s:Highlight("ErrorMsg", g:pallete.white, g:pallete.red)
call s:Highlight("FoldColumn", "30")
call s:Highlight("Folded", "18", "100")
call s:Highlight("Identifier", g:pallete.green)
call s:Highlight("Ignore", "102")
call s:Highlight("Label", g:pallete.yellow)
call s:Highlight("MatchParen", "NONE", g:pallete.white, "NONE")

call s:Highlight("ModeMsg", g:pallete.white)
call s:Highlight("MoreMsg", g:pallete.green, "NONE", "UNDERLINE")

" Search
call s:Highlight("IncSearch", g:pallete.dark_black, g:pallete.yellow)
hi! link Search IncSearch
call s:Highlight("CurSearch", g:pallete.dark_black, g:pallete.white)

call s:Highlight("NonText", "176")
call s:Highlight("Normal", g:pallete.white, "0")
call s:Highlight("Pmenu", "0", "30")
call s:Highlight("PmenuSbar", "NONE")
call s:Highlight("PmenuSel", "30", "231")
call s:Highlight("PmenuThumb", "NONE", "231")
call s:Highlight("PreProc", "133")
call s:Highlight("Question", "46")
call s:Highlight("QuickFixLine", "16", "176")
call s:Highlight("SignColumn", "30")
call s:Highlight("Special", "176")
call s:Highlight("SpecialKey", "87")
call s:Highlight("SpellBad", "160", "NONE", "UNDERLINE")
call s:Highlight("SpellCap", "46", "NONE", "UNDERLINE")
call s:Highlight("SpellLocal", "231", "NONE", "UNDERLINE")
call s:Highlight("SpellRare", "176", "NONE", "UNDERLINE")
call s:Highlight("Statement", "214")
call s:Highlight("StatusLine", g:pallete.white, g:pallete.black)
call s:Highlight("StatusLineNC", "18", g:pallete.black)
call s:Highlight("Title", "176")
call s:Highlight("Todo", "NONE", "NONE", "REVERSE")
call s:Highlight("ToolbarButton", "231", "25")
call s:Highlight("ToolbarLine", "NONE")
call s:Highlight("Type", "74")
call s:Highlight("Underlined", "NONE", "NONE", "UNDERLINE")
call s:Highlight("VertSplit", g:pallete.white, g:pallete.black)
call s:Highlight("Visual", "NONE", "244")
call s:Highlight("VisualNOS", "30", "231")
call s:Highlight("WarningMsg", "176")
call s:Highlight("WildMenu", "18", g:pallete.yellow)
call s:Highlight("debugBreakpoint", "46", "18", "REVERSE")
call s:Highlight("debugPC", "87", "18", "REVERSE")

" Vim Documentation
call s:Highlight("helpCommand", "75", "NONE", "ITALIC")
call s:Highlight("helpExample", "246", "NONE", "ITALIC")
call s:Highlight("helpHeadline", g:pallete.white)
call s:Highlight("helpHyperTextEntry", "214")
call s:Highlight("helpHyperTextJump", "106", "NONE", "UNDERLINE")
call s:Highlight("helpStar", "244", "NONE", "ITALIC")
call s:Highlight("helpSectionDelim", "244")
call s:Highlight("helpSpecial", g:pallete.yellow, "NONE", "ITALIC")
call s:Highlight("helpURL", "75", "NONE", "UNDERLINE")
call s:Highlight("helpOption", "75")

" Vim Diff
call s:Highlight("DiffAdd", "231", "65")
call s:Highlight("DiffChange", "23","67")
call s:Highlight("DiffText", "16", "251")
call s:Highlight("DiffDelete", "231", "133")

hi! link Terminal Normal
hi! link Debug Special
hi! link diffAdded String
hi! link diffRemoved WarningMsg
hi! link diffOnly WarningMsg
hi! link diffNoEOL WarningMsg
hi! link diffIsA WarningMsg
hi! link diffIdentical WarningMsg
hi! link diffDiffer WarningMsg
hi! link diffCommon WarningMsg
hi! link diffBDiffer WarningMsg
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
