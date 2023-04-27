
let g:solarized_termcolors=256
set termguicolors
colorscheme solarized
"set background=light
"colorscheme inkpot
"colorscheme SolarizedDark
"colorscheme jellybeans 
" hi Function     cterm=NONE                      ctermfg=darkblue
" hi comment      cterm=NONE ctermfg=DarkGrey    guibg=#000000   guifg=Black
" hi Number                                       ctermfg=red
hi cursorline   cterm=bold 
"hi cursorline   cterm=bold guibg=black
" hi CursorLine   cterm=NONE ctermbg=black ctermfg=yellow guibg=NONE guifg=NONE
" hi CursorLine   cterm=bold ctermbg=black ctermfg=None guibg=NONE guifg=NONE
hi Search       guibg=#ffffff   guifg=black
hi Visual       cterm=reverse 
"gui=None guibg=#8899ff  guifg=#FFFFFF   
hi SignColumn   guibg=NONE                      ctermbg=NONE

""""""""""""""""""""""
""" merge conflict tool 
""""""""""""""""""""""
" disable the default highlight group
let g:conflict_marker_highlight_group = ''
" Include text after begin and end markers
" let g:conflict_marker_begin = '^<<<<<<< .*$'
" let g:conflict_marker_end   = '^>>>>>>> .*$'
highlight ConflictMarkerBegin guibg=#2f7366
highlight ConflictMarkerOurs guibg=#2e5049
highlight ConflictMarkerTheirs guibg=#344f69
highlight ConflictMarkerEnd guibg=#2f628e
highlight ConflictMarkerCommonAncestorsHunk guibg=#754a81
"co 
"ct
