scriptencoding utf-8

let g:airline#themes#calm#palette = {}

let s:airline_a_normal = [ '#000000' , '#000000' , 253  , 108 ]
let s:airline_b_normal = [ '#000000' , '#000000' , 253  , 237 ]
let s:airline_c_normal = [ '#9cffd3' , '#202020' , 253  , 237 ]
let g:airline#themes#calm#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b_normal, s:airline_c_normal)
let g:airline#themes#calm#palette.normal_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 16     , 237      , ''     ] ,
      \ }

let s:airline_a_insert = [ '#00005f' , '#00dfff' , 16  , 179 ]
let s:airline_b_insert = [ '#ffffff' , '#005fff' , 16  , 237 ]
let s:airline_c_insert = [ '#ffffff' , '#000080' , 16  , 237 ]
let g:airline#themes#calm#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b_insert, s:airline_c_insert)
let g:airline#themes#calm#palette.insert_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 16     , 237      , ''     ] ,
      \ }

let g:airline#themes#calm#palette.insert_paste = {
      \ 'airline_a': [ s:airline_a_insert[0]   , '#d78700' , s:airline_a_insert[2] , 172     , ''     ] ,
      \ }

let g:airline#themes#calm#palette.replace = copy(g:airline#themes#calm#palette.insert)
let g:airline#themes#calm#palette.replace.airline_a = [ s:airline_b_insert[0]   , '#af0000' , s:airline_b_insert[2] , 124     , ''     ]
let g:airline#themes#calm#palette.replace_modified = g:airline#themes#calm#palette.insert_modified

let s:airline_a_visual = [ '#000000' , '#ffaf00' , 232 , 214 ]
let s:airline_b_visual = [ '#000000' , '#ff5f00' , 232 , 237 ]
let s:airline_c_visual = [ '#ffffff' , '#5f0000' , 15  , 237 ]
let g:airline#themes#calm#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b_visual, s:airline_c_visual)
let g:airline#themes#calm#palette.visual_modified = {
      \ 'airline_c': [ '#ffffff' , '#5f005f' , 255     , 237      , ''     ] ,
      \ }

let s:airline_a_inactive = [ '#4e4e4e' , '#1c1c1c' , 239 , 234 , '' ]
let s:airline_b_inactive = [ '#4e4e4e' , '#262626' , 239 , 235 , '' ]
let s:airline_c_inactive = [ '#4e4e4e' , '#303030' , 239 , 236 , '' ]
let g:airline#themes#calm#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#calm#palette.inactive_modified = {
      \ 'airline_c': [ '#875faf' , '' , 97 , '' , '' ] ,
      \ }

let s:airline_a_commandline = [ '#00005f' , '#00d700' , 16  , 75  ]
let s:airline_b_commandline = [ '#ffffff' , '#444444' , 16  , 237 ]
let s:airline_c_commandline = [ '#9cffd3' , '#202020' , 16  , 237 ]
let g:airline#themes#calm#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b_commandline, s:airline_c_commandline)

let g:airline#themes#calm#palette.accents = {
      \ 'red': [ '#ff0000' , '' , 160 , ''  ]
      \ }

" Terminal status bar
let s:airline_a_terminal = [ '#00000f' , '#000000' , 16  , 219 ]
let s:airline_b_terminal = [ '#00000f' , '#000000' , 16  , 0   ]
let s:airline_c_terminal = [ '#00000f' , '#000000' , 16  , 245 ]

let g:airline#themes#calm#palette.terminal = airline#themes#generate_color_map(s:airline_a_terminal, s:airline_b_terminal, s:airline_c_terminal)
let g:airline#themes#calm#palette.normal_modified.airline_term = s:airline_c_terminal
let g:airline#themes#calm#palette.terminal.airline_term = s:airline_c_terminal
let g:airline#themes#calm#palette.visual_modified.airline_term = s:airline_c_terminal
