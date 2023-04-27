
let mapleader = ","
map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr>

nmap <tab> :bn<cr>
nmap <C-n> :bn<cr>
nmap <S-tab> :bp<cr>
nmap <C-q> :bd<cr>
""""""""""""""""""""""
""" GitGutter keymap
""""""""""""""""""""""
" let g:gitgutter_highlight_lines = 1
" let g:gitgutter_highlight_linenrs = 1
" vim-gitgutter used to do this by default:
highlight! link SignColumn LineNr
hi MatchParen ctermbg=blue guibg=lightblue
" set signcolumn=yes
" hi GitGutterAdd    guifg=#009900 ctermfg=2
" hi GitGutterChange guifg=#bbbb00 ctermfg=3
" hi GitGutterDelete guifg=#ff2222 ctermfg=1
" hi link GitGutterChangeLine DiffText

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap <leader>hp <Plug>(GitGutterPreviewHunk)

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:fzf_action = { 'ctrl-e': 'edit' }

nmap <silent> <leader>zh :History<cr>
nmap <silent> <leader>zf :Files<cr>
nmap <silent> <leader>zg :GFiles?<cr>
nmap <silent> <leader>zt :Tags<cr>
nmap <silent> <leader>zl :Lines<cr>
nmap <silent> <leader>zp :Locate<space>
nmap <C-p> :Files<CR>
" nmap <C-b> :Buffers<CR>
" <C-q> to close float window "


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leaderf 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:Lf_GtagsAutoGenerate = 1
" don't show the help in normal mode
let g:Lf_HideHelp = 0
let g:Lf_UseCache = 1
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
" let g:Lf_WindowPosition = 'popup'
" let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewInPopup = 0
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }
let g:Lf_ShortcutF = "<leader>f"
let g:Lf_DefaultMode = "Regex"
" https://github.com/ryanoasis/nerd-fonts
let g:Lf_ShowDevIcons = 1

noremap <leader>f  :<C-U><C-R>=printf("Leaderf file %s", "")<CR><CR>
noremap <leader>b  :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>ru :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>l  :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>

noremap <leader>gr :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR><CR>
noremap <leader>gb :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR><CR>
" search visually selected text literally
" xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
" noremap go :<C-U>Leaderf! rg --recall<CR>
"Esc to close float window"
" should use `Leaderf gtags --update` first
" let g:Lf_GtagsAutoGenerate = 0
" let g:Lf_Gtagslabel = 'native-pygments'
" noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
" noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
" noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

