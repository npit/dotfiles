"""" Airline config (cool status bars)
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#tab_nr_type = 1 " show tab # not splits in tab
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#bufferline#overwrite_variables=0
"let g:airline#extensions#tabline#buffer_nr_show = 1

"""" Bufferline (show buffers on airline) config
let g:bufferline_echo = 0 " no buffer display on the command line
let g:bufferline_active_buffer_left = ' '
let g:bufferline_active_buffer_right = ''
let g:bufferline_show_bufnr = 1
let g:bufferline_active_highlight = 'StatusLineNC'
let g:bufferline_inactive_highlight = 'airline_c'

"""" Indentline configuration
let g:indentLine_char = '⇥'     " alt ┋ ┆ ┊ │  ⁝ ⁞ ⋮ ⇥
let g:indentLine_color_gui = 'gray'
let g:indentLine_concealcursor = 1
"let g:indentLine_leadingSpaceEnabled = 1
"let g:indentLine_setColors = 0
"let g:indentLine_conceallevel =  0
