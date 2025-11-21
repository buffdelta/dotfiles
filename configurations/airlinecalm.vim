scriptencoding utf-8

let g:palette = {
    \ 'yellow'     : 220,
    \ 'green'      : 108,
    \ 'red'        :  88,
    \ 'white'      : 253,
    \ 'gray'       : 240,
    \ 'black'      : 235,
    \ 'dark_black' : 234,
    \ 'blue'       :  25,
    \ 'background' : 234,
    \ 'orange'     : 180,
    \ 'dark_orange' : 214,
    \ 'bright_orange' : 202,
    \ 'cyan' : 30,
    \ 'purple' : 133,
    \ }

let g:gui_palette = {
    \ 'yellow'     : '#ffd700',
    \ 'green'      : '#87af87',
    \ 'red'        : '#870000',
    \ 'white'      : '#dadada',
    \ 'gray'       : '#585858',
    \ 'black'      : '#262626',
    \ 'dark_black' : '#1c1c1c',
    \ 'blue'       : '#005faf',
    \ 'background' : '#21222c',
    \ 'orange'     : '#d7af87',
    \ 'dark_orange' : '#ffaf00',
    \ 'bright_orange' : '#ff5f00',
    \ 'cyan' : '#008787',
    \ 'purple' : '#af5faf',
    \ }

let g:airline#themes#calm#palette = {}

let s:airline_b = [ g:gui_palette.white, g:gui_palette.dark_black , g:palette.white , g:palette.dark_black ]
let s:airline_c = [ g:gui_palette.white , g:gui_palette.black , g:palette.white , g:palette.black ]
let s:airline_warning = [ g:gui_palette.white , g:gui_palette.red , g:palette.white , g:palette.red ]

" Normal Mode
let s:airline_a_normal = [ g:gui_palette.black , g:gui_palette.green , g:palette.black , g:palette.green , 'bold' ]

let g:airline#themes#calm#palette.normal = airline#themes#generate_color_map(s:airline_a_normal, s:airline_b, s:airline_c)
let g:airline#themes#calm#palette.normal.airline_error = [ '#000000' , '#000000' , 0 , 0 ]
let g:airline#themes#calm#palette.normal.airline_warning = s:airline_warning
let g:airline#themes#calm#palette.normal.airline_error_inactive = [ '#000000' , '#000000' , 0 , 0 ]
let g:airline#themes#calm#palette.normal.airline_error_red = [ '#000000' , '#000000' , 0 , 0 ]
let g:airline#themes#calm#palette.normal.airline_warning_red = [ '#000000' , '#000000' , 0 , 0 ]
let g:airline#themes#calm#palette.normal.airline_term = s:airline_c
let g:airline#themes#calm#palette.normal_modified = deepcopy(g:airline#themes#calm#palette.normal)

" Insert Mode
let s:airline_a_insert = [ g:gui_palette.black , g:gui_palette.yellow , g:palette.black , g:palette.yellow , 'bold' ]

let g:airline#themes#calm#palette.insert = airline#themes#generate_color_map(s:airline_a_insert, s:airline_b, s:airline_c)
let g:airline#themes#calm#palette.insert.airline_error = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.insert.airline_warning = s:airline_warning
let g:airline#themes#calm#palette.insert.airline_error_inactive = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.insert.airline_error_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.insert.airline_warning_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.insert.airline_term = s:airline_c
let g:airline#themes#calm#palette.insert_modified = deepcopy(g:airline#themes#calm#palette.insert)


" Replace Mode
let s:airline_a_replace = [ g:gui_palette.black , g:gui_palette.red , g:palette.black , g:palette.red , 'bold' ]

let g:airline#themes#calm#palette.replace = airline#themes#generate_color_map(s:airline_a_replace, s:airline_b, s:airline_c)
let g:airline#themes#calm#palette.replace.airline_error = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.replace.airline_warning = s:airline_warning
let g:airline#themes#calm#palette.replace.airline_error_inactive = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.replace.airline_error_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.replace.airline_warning_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.replace.airline_term = s:airline_c
let g:airline#themes#calm#palette.replace_modified = deepcopy(g:airline#themes#calm#palette.replace)


" Visual Mode
let s:airline_a_visual = [ g:gui_palette.black , g:gui_palette.dark_orange , g:palette.black  , g:palette.dark_orange , 'bold' ]

let g:airline#themes#calm#palette.visual = airline#themes#generate_color_map(s:airline_a_visual, s:airline_b, s:airline_c)
let g:airline#themes#calm#palette.visual.airline_error = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.visual.airline_warning = s:airline_warning
let g:airline#themes#calm#palette.visual.airline_error_inactive = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.visual.airline_error_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.visual.airline_warning_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.visual.airline_term = s:airline_c
let g:airline#themes#calm#palette.visual_modified = deepcopy(g:airline#themes#calm#palette.visual)


" Command Mode
let s:airline_a_commandline = [ g:gui_palette.black, g:gui_palette.blue , g:palette.black , 75 , 'bold' ]

let g:airline#themes#calm#palette.commandline = airline#themes#generate_color_map(s:airline_a_commandline, s:airline_b, s:airline_c)
let g:airline#themes#calm#palette.commandline.airline_error = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.commandline.airline_warning = s:airline_warning
let g:airline#themes#calm#palette.commandline.airline_error_inactive = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.commandline.airline_error_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.commandline.airline_warning_red = [ '#000000' , '#000000', 0, 0 ]
let g:airline#themes#calm#palette.commandline.airline_term = s:airline_c
let g:airline#themes#calm#palette.commandline_modified = deepcopy(g:airline#themes#calm#palette.commandline)


" Inactive
let s:airline_a_inactive = [ '#4e4e4e' , '#1c1c1c' , g:palette.gray , 233 , '' ]
let s:airline_b_inactive = [ '#4e4e4e' , '#262626' , g:palette.gray , g:palette.dark_black , '' ]
let s:airline_c_inactive = [ '#4e4e4e' , '#303030' , g:palette.gray , g:palette.black , '' ]

let g:airline#themes#calm#palette.inactive = airline#themes#generate_color_map(s:airline_a_inactive, s:airline_b_inactive, s:airline_c_inactive)
let g:airline#themes#calm#palette.inactive.airline_term = s:airline_c
let g:airline#themes#calm#palette.inactive_modified = deepcopy(g:airline#themes#calm#palette.inactive)


" Tabline
let g:airline#themes#calm#palette.tabline = {}
let g:airline#themes#calm#palette.tabline.airline_tab               = [ g:gui_palette.black , g:gui_palette.gray        , g:palette.black   , g:palette.gray    , '' ]
let g:airline#themes#calm#palette.tabline.airline_tab_right         = [ g:gui_palette.black , g:gui_palette.gray        , g:palette.black   , g:palette.gray    , '' ]
let g:airline#themes#calm#palette.tabline.airline_tabsel            = [ g:gui_palette.black , g:gui_palette.green       , g:palette.black   , g:palette.green   , 'bold' ]
let g:airline#themes#calm#palette.tabline.airline_tabsel_right      = [ g:gui_palette.black , g:gui_palette.green       , g:palette.black   , g:palette.green   , '' ]
let g:airline#themes#calm#palette.tabline.airline_tabfill           = [ g:gui_palette.yellow, g:gui_palette.black       , g:palette.yellow  , g:palette.black       ]
let g:airline#themes#calm#palette.tabline.airline_tabmod            = [ g:gui_palette.black , g:gui_palette.yellow      , g:palette.black   , g:palette.yellow  , 'bold' ]
let g:airline#themes#calm#palette.tabline.airline_tabmod_right      = [ g:gui_palette.yellow, g:gui_palette.black       , g:palette.yellow  , g:palette.black ]
let g:airline#themes#calm#palette.tabline.airline_tabmod_unsel      = [ g:gui_palette.black , g:gui_palette.yellow      , g:palette.black   , g:palette.yellow  , '' ]
let g:airline#themes#calm#palette.tabline.airline_tabtype           =   s:airline_a_commandline
let g:airline#themes#calm#palette.tabline.airline_tablabel          = [ g:gui_palette.gray  , g:gui_palette.dark_black  , g:palette.gray    , g:palette.dark_black ]
let g:airline#themes#calm#palette.tabline.airline_tablabel_right    = [ g:gui_palette.gray  , g:gui_palette.dark_black  , g:palette.gray    , g:palette.black   , '' ]
let g:airline#themes#calm#palette.tabline.airline_tabhid            = [ g:gui_palette.black , g:gui_palette.gray        , g:palette.black   , g:palette.gray    , '' ]
