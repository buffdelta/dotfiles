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
    \ 'calm_yellow'     : 220,
    \ 'calm_blue'       : 108,
    \ 'calm_red'        :  88,
    \ 'calm_white'      : 253,
    \ 'calm_gray'       : 240,
    \ 'calm_black'      : 235,
    \ 'calm_dark_black' : 234
    \ }

let g:colors_name = 'calm'

hi ColorColumn ctermfg=NONE ctermbg=90 cterm=NONE
hi Comment ctermfg=180 ctermbg=NONE cterm=NONE
hi Conceal ctermfg=NONE ctermbg=NONE cterm=NONE
hi Conditional ctermfg=214 ctermbg=NONE cterm=NONE
hi Constant ctermfg=202 ctermbg=NONE cterm=NONE
hi Cursor ctermfg=NONE ctermbg=NONE cterm=NONE
hi CursorColumn ctermfg=NONE ctermbg=25 cterm=NONE
hi CursorIM ctermfg=16 ctermbg=220 cterm=NONE
hi CursorLine ctermfg=NONE ctermbg=238 cterm=NONE
execute 'highlight CursorLineNr ctermfg=' . g:pallete.calm_white . 'ctermbg=90 cterm=NONE'
hi Directory ctermfg=219 ctermbg=NONE cterm=NONE
hi EndOfBuffer ctermfg=220 ctermbg=NONE cterm=NONE
hi Error ctermfg=209 ctermbg=18 cterm=reverse
hi ErrorMsg ctermfg=231 ctermbg=160 cterm=NONE
hi FoldColumn ctermfg=30 ctermbg=NONE cterm=NONE
hi Folded ctermfg=18 ctermbg=100 cterm=NONE
hi Identifier ctermfg=108 ctermbg=NONE cterm=NONE
hi Ignore ctermfg=102 ctermbg=NONE cterm=NONE
hi IncSearch ctermfg=176 ctermbg=16 cterm=reverse
hi Label ctermfg=220 ctermbg=NONE cterm=NONE
hi LineNr ctermfg=243 ctermbg=NONE cterm=NONE
hi MatchParen ctermfg=NONE ctermbg=NONE cterm=reverse
hi ModeMsg ctermfg=18 ctermbg=46 cterm=NONE
hi MoreMsg ctermfg=87 ctermbg=NONE cterm=NONE

hi NonText ctermfg=176 ctermbg=NONE cterm=NONE
hi Normal ctermfg=253 ctermbg=0 cterm=NONE
hi Pmenu ctermfg=0 ctermbg=30 cterm=NONE
hi PmenuSbar ctermfg=NONE ctermbg=NONE cterm=NONE
hi PmenuSel ctermfg=30 ctermbg=231 cterm=NONE
hi PmenuThumb ctermfg=NONE ctermbg=231 cterm=NONE
hi PreProc ctermfg=133 ctermbg=NONE cterm=NONE
hi Question ctermfg=46 ctermbg=NONE cterm=NONE
hi QuickFixLine ctermfg=16 ctermbg=176 cterm=NONE
hi Search ctermfg=232 ctermbg=178 cterm=NONE
hi SignColumn ctermfg=30 ctermbg=NONE cterm=NONE
hi Special ctermfg=176 ctermbg=NONE cterm=NONE
hi SpecialKey ctermfg=87 ctermbg=NONE cterm=NONE
hi SpellBad ctermfg=160 ctermbg=NONE cterm=underline
hi SpellCap ctermfg=46 ctermbg=NONE cterm=underline
hi SpellLocal ctermfg=231 ctermbg=NONE cterm=underline
hi SpellRare ctermfg=176 ctermbg=NONE cterm=underline
hi Statement ctermfg=214 ctermbg=NONE cterm=NONE
hi StatusLine ctermfg=253 ctermbg=235 cterm=NONE
hi StatusLineNC ctermfg=18 ctermbg=NONE cterm=NONE
hi Title ctermfg=176 ctermbg=NONE cterm=NONE
hi Todo ctermfg=NONE ctermbg=NONE cterm=reverse
hi ToolbarButton ctermfg=231 ctermbg=25 cterm=NONE
hi ToolbarLine ctermfg=NONE ctermbg=NONE cterm=NONE
hi Type ctermfg=74 ctermbg=NONE cterm=NONE
hi Underlined ctermfg=NONE ctermbg=NONE cterm=underline
hi VertSplit ctermfg=231 ctermbg=NONE cterm=NONE
hi Visual ctermfg=NONE ctermbg=244 cterm=NONE
hi VisualNOS ctermfg=30 ctermbg=231 cterm=NONE
hi WarningMsg ctermfg=176 ctermbg=NONE cterm=NONE
hi WildMenu ctermfg=18 ctermbg=220 cterm=NONE
hi debugBreakpoint ctermfg=46 ctermbg=18 cterm=reverse
hi debugPC ctermfg=87 ctermbg=18 cterm=reverse

" Netrw
hi netrwSymLink ctermfg=30 ctermbg=NONE cterm=NONE
hi netrwExe ctermfg=108 ctermbg=NONE cterm=NONE
hi netrwClassify ctermfg=15 ctermbg=NONE cterm=NONE
hi netrwList ctermfg=212 ctermbg=NONE cterm=NONE
hi netrwHelpCmd ctermfg=108 ctermbg=NONE cterm=NONE
hi netrwVersion ctermfg=200 ctermbg=NONE cterm=NONE
hi! link netrwComment Comment

" Vim Documentation
hi helpCommand ctermfg=16 ctermbg=NONE cterm=NONE
hi helpExample ctermfg=246 ctermbg=NONE cterm=ITALIC
hi helpHeadline ctermfg=253 ctermbg=NONE cterm=NONE
hi helpHyperTextEntry ctermfg=214 ctermbg=NONE cterm=NONE
hi helpHyperTextJump ctermfg=106 ctermbg=NONE cterm=UNDERLINE
hi helpStar ctermfg=244 ctermbg=NONE cterm=ITALIC
hi helpSectionDelim ctermfg=244 ctermbg=NONE cterm=NONE
hi helpSpecial ctermfg=220 ctermbg=NONE cterm=ITALIC
hi helpURL ctermfg=75 ctermbg=NONE cterm=UNDERLINE
hi helpOption ctermfg=75 ctermbg=NONE cterm=NONE

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
hi! link LineNrAbove LineNr
hi! link LineNrBelow LineNr
hi! link CurSearch Search
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
hi DiffAdd ctermfg=231 ctermbg=65 cterm=NONE
hi DiffChange ctermfg=231 ctermbg=67 cterm=NONE
hi DiffText ctermfg=16 ctermbg=251 cterm=NONE
hi DiffDelete ctermfg=231 ctermbg=133 cterm=NONE
