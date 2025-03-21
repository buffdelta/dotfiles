scriptencoding utf-8

let g:airline#themes#calm#palette = {}

let s:airline_b = [ '#000000' , '#000000' , g:pallete.white , g:pallete.dark_black ]
let s:airline_c = [ '#000000' , '#000000' , g:pallete.white , g:pallete.black ]
let s:airline_warning = [ '#000000' , '#000000' , g:pallete.white , g:pallete.red ]


" Normal Mode
let s:airline_a_normal = [ '#000000' , '#000000' , g:pallete.black , g:pallete.green ]

let g:airline#themes#calm#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b, s:airline_c)
let g:airline#themes#calm#palette.normal.airline_error = [ '#000000' , '#000000' , 0 , 0 ]
let g:airline#themes#calm#palette.normal.airline_warning = s:airline_warning
let g:airline#themes#calm#palette.normal.airline_error_inactive = [ '#000000' , '#000000' , 0 , 0 ]
let g:airline#themes#calm#palette.normal.airline_error_red = [ '#000000' , '#000000' , 0 , 0 ]
let g:airline#themes#calm#palette.normal.airline_warning_red = [ '#000000' , '#000000' , 0 , 0 ]
let g:airline#themes#calm#palette.normal.airline_term = s:airline_c
let g:airline#themes#calm#palette.normal_modified = deepcopy(g:airline#themes#calm#palette.normal)


" Insert Mode
let s:airline_a_insert = [ '#00005f' , '#00dfff' , g:pallete.black , g:pallete.yellow ]

let g:airline#themes#calm#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b, s:airline_c)
let g:airline#themes#calm#palette.insert.airline_error = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.insert.airline_warning = s:airline_warning
let g:airline#themes#calm#palette.insert.airline_error_inactive = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.insert.airline_error_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.insert.airline_warning_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.insert.airline_term = s:airline_c
let g:airline#themes#calm#palette.insert_modified = deepcopy(g:airline#themes#calm#palette.insert)


" Replace Mode
let s:airline_a_replace = [ '#000000' , '#000000' , g:pallete.black , 160 ]

let g:airline#themes#calm#palette.replace = airline#themes#generate_color_map(s:airline_a_replace, s:airline_b, s:airline_c)
let g:airline#themes#calm#palette.replace.airline_error = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.replace.airline_warning = s:airline_warning
let g:airline#themes#calm#palette.replace.airline_error_inactive = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.replace.airline_error_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.replace.airline_warning_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.replace.airline_term = s:airline_c
let g:airline#themes#calm#palette.replace_modified = deepcopy(g:airline#themes#calm#palette.replace)


" Visual Mode
let s:airline_a_visual = [ '#000000' , '#ffaf00' , g:pallete.black  , 214 ]

let g:airline#themes#calm#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b, s:airline_c)
let g:airline#themes#calm#palette.visual.airline_error = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.visual.airline_warning = s:airline_warning
let g:airline#themes#calm#palette.visual.airline_error_inactive = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.visual.airline_error_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.visual.airline_warning_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.visual.airline_term = s:airline_c
let g:airline#themes#calm#palette.visual_modified = deepcopy(g:airline#themes#calm#palette.visual)


" Command Mode
let s:airline_a_commandline = [ '#00005f' , '#00d700' , g:pallete.black , 75  ]

let g:airline#themes#calm#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b, s:airline_c)
let g:airline#themes#calm#palette.commandline.airline_error = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.commandline.airline_warning = s:airline_warning
let g:airline#themes#calm#palette.commandline.airline_error_inactive = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.commandline.airline_error_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.commandline.airline_warning_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.commandline.airline_term = s:airline_c
let g:airline#themes#calm#palette.commandline_modified = deepcopy(g:airline#themes#calm#palette.commandline)


" Inactive
let s:airline_a_inactive = [ '#4e4e4e' , '#1c1c1c' , g:pallete.gray , 233 , '' ]
let s:airline_b_inactive = [ '#4e4e4e' , '#262626' , g:pallete.gray , g:pallete.dark_black , '' ]
let s:airline_c_inactive = [ '#4e4e4e' , '#303030' , g:pallete.gray , g:pallete.black , '' ]

let g:airline#themes#calm#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#calm#palette.inactive.airline_term = s:airline_c
let g:airline#themes#calm#palette.inactive_modified = deepcopy(g:airline#themes#calm#palette.inactive)


" Tabline
let g:airline#themes#calm#palette.tabline = {}
let g:airline#themes#calm#palette.tabline.airline_tab = [ '#4e4e4e' , '#303030' , g:pallete.black , g:pallete.gray , 'bold' ]
let g:airline#themes#calm#palette.tabline.airline_tab_right = [ '#4e4e4e' , '#303030' , g:pallete.black , g:pallete.gray , 'bold' ]
let g:airline#themes#calm#palette.tabline.airline_tabsel = [ '#4e4e4e' , '#303030' , g:pallete.black , g:pallete.green , 'bold' ]
let g:airline#themes#calm#palette.tabline.airline_tabsel_right = [ '#4e4e4e' , '#303030' , g:pallete.black , g:pallete.green , 'bold' ]
let g:airline#themes#calm#palette.tabline.airline_tabfill = [ '#4e4e4e' , '#303030' , g:pallete.yellow , g:pallete.black ]
let g:airline#themes#calm#palette.tabline.airline_tabmod = [ '#4e4e4e' , '#303030' , g:pallete.black , 220 ]
let g:airline#themes#calm#palette.tabline.airline_tabmod_right = [ '#4e4e4e' , '#303030' , g:pallete.yellow , g:pallete.black ]
let g:airline#themes#calm#palette.tabline.airline_tabmod_unsel = [ '#4e4e4e' , '#303030' , g:pallete.black , 220 , 'bold' ]
let g:airline#themes#calm#palette.tabline.airline_tabtype = s:airline_a_commandline
let g:airline#themes#calm#palette.tabline.airline_tablabel = [ '#000000' , '#000000' , g:pallete.gray, g:pallete.dark_black]
let g:airline#themes#calm#palette.tabline.airline_tablabel_right = [ '#000000' , '#000000' , g:pallete.gray, g:pallete.black, 'bold']
let g:airline#themes#calm#palette.tabline.airline_tabhid = [ '#000000' , '#000000' , g:pallete.black, g:pallete.gray, 'bold' ]
