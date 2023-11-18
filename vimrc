" set directory=$HOME/.vim/swap//
set nocompatible
set hlsearch
set ruler
set expandtab
"set list listchars=tab:>-
set ls=2
set autoindent
set backspace=indent,eol,start
set autoread
set showmode
set showmatch
set ignorecase smartcase
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8,gbk
set encoding=utf-8
set tabstop=4
set shiftwidth=4
set number
"set number relativenumber
"set cursorline
"set cursorcolumn
"set noswapfile
set incsearch 
set wrapscan
set formatoptions=
" set formatoptions=croql
"""""""""""""""""""""""""""""""""""
"must set before syntax enable
set background=dark
" tail -f
" set autoread

if &t_Co > 1
  syntax enable
endif


source ~/.vim/rc/displayz.vimrc
source ~/.vim/rc/plugs.vimrc
source ~/.vim/rc/maps.vimrc


autocmd InsertEnter * se cul
autocmd! bufwritepost .vimrc source ~/.vimrc
autocmd FileType * call s:compileByFileType()
function! s:compileByFileType()
  " if &filetype=="c"
    " if has("cscope")
      " set csprg=/home/hongdouz/bin/cscope
      set csto=1
      set cst
      set nocsverb
      " add any database in current directory
      if filereadable("cscope.out")
            cs add cscope.out
      " else add database pointed to by environment
      elseif $CSCOPE_DB != ""
      cs add $CSCOPE_DB
      endif
      set csverb
    " endif
      """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
      " cscope setting
      """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
      nmap <C-@>s :cs find s <C-R>=expand("<cword>")<CR><CR>
      nmap <C-@>g :cs find g <C-R>=expand("<cword>")<CR><CR>
      nmap <C-@>c :cs find c <C-R>=expand("<cword>")<CR><CR>
      nmap <C-@>t :cs find t <C-R>=expand("<cword>")<CR><CR>
      nmap <C-@>e :cs find e <C-R>=expand("<cword>")<CR><CR>
      nmap <C-@>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
      nmap <C-@>i :cs find i <C-R>=expand("<cfile>")<CR><CR>
      nmap <C-@>d :cs find d <C-R>=expand("<cword>")<CR><CR>
      "nmap <C-@>d :cs find g <C-R>=expand(build_command_tree)<CR><CR>
      nmap <C-@>r :cs find g build_command_tree<CR>
  " elseif &filetype=="rust"
      " Use `[g` and `]g` to navigate diagnostics
      " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.

      nmap <leader>g <Plug>(coc-definition)
      nmap <leader>t <Plug>(coc-type-definition)
      nmap <leader>i <Plug>(coc-implementation)
      nmap <leader>r <Plug>(coc-references)
      " Symbol renaming.
      nmap <leader>rn <Plug>(coc-rename)
      " Formatting selected code.
      xmap <leader>fmt  <Plug>(coc-format-selected)
      nmap <leader>fmt  <Plug>(coc-format-selected)
  " endif
endfunction










"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" asyncrun setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:asyncrun_open = 6
let g:asyncrun_bell = 1
let g:asyncrun_rootmarks = ['.git', '.root']
"nnoremap <F7> :call asyncrun#quickfix_toggle(6)<cr>
"nnoremap <silent> <F8> :AsyncRun -cwd=<root> -raw make run <cr>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Taglist setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set tags=./.tags;,.tags
let Tlist_Ctags_Cmd = '/home/zhd/.vim/bin/ctags'
set tags=tags;/
let Tlist_Show_One_File = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Use_Left_Window = 1
" let Tlist_Use_Right_Window = 1
let Tlist_GainFocus_On_ToggleOpen = 1
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set viminfo='10,"100,:20,%,n~/.viminfo
set sessionoptions-=curdir
set sessionoptions+=sesdir
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 'inkarkat/vim-mark'
" mark colors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=3
hi IndentGuidesEven guibg=green ctermbg=4
"highlight MarkWordN ctermbg=Cyan ctermfg=Black guibg=#8CCBEA guifg=Black
" hi MarkWord1  ctermbg=1     ctermfg=Black  guibg=#8CCBEA    guifg=Black
" hi MarkWord2  ctermbg=2     ctermfg=Black  guibg=#A4E57E    guifg=Black
" hi MarkWord3  ctermbg=3     ctermfg=Black  guibg=#FFDB72    guifg=Black
" hi MarkWord4  ctermbg=4     ctermfg=Black  guibg=#FF7272    guifg=Black
" hi MarkWord5  ctermbg=5     ctermfg=Black  guibg=#FFB3FF    guifg=Black
" hi MarkWord6  ctermbg=6     ctermfg=Black  guibg=#9999FF    guifg=Black
hi MarkWord1  ctermbg=1  ctermfg=Black
hi MarkWord2  ctermbg=2  ctermfg=Black
hi MarkWord3  ctermbg=3  ctermfg=Black
hi MarkWord4  ctermbg=4  ctermfg=Black
hi MarkWord5  ctermbg=5  ctermfg=Black
hi MarkWord6  ctermbg=6  ctermfg=Black
nmap <silent> <leader>hl <Plug>MarkSet
nmap <silent> <leader>hh <Plug>MarkClear
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gD <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
" nmap <silent> rn <Plug>(coc-rename)
" Go to mappings
" nmap <silent> Cd <Plug>(coc-definition)
" nmap <silent> Ct <Plug>(coc-type-definition)
" nmap <silent> Cp <Plug>(coc-implementation)
" nmap <silent> Cr <Plug>(coc-references)

" Refactoring mappings
"not working, nvim functions
nmap CR  <Plug>(coc-rename)
nmap <leader>rn  <Plug>(coc-rename)
xmap <leader>rn  <Plug>(coc-rename)
nmap <leader>a  <Plug>(coc-codeaction)
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap CF  <Plug>(coc-format)
xmap CF  <Plug>(coc-format-selected)
nmap CX  <Plug>(coc-fix-current)

nmap CC  <Plug>(coc-cursors-word)
" :CocSearch

" Coc lists mappings
" nnoremap <silent> Cld  :<C-u>CocList diagnostics<cr>
" nnoremap <silent> Cle  :<C-u>CocList extensions<cr>
" nnoremap <silent> Clc  :<C-u>CocList commands<cr>
" nnoremap <silent> Clo  :<C-u>CocList outline<cr>
" nnoremap <silent> Cls  :<C-u>CocList -I symbols<cr>
nnoremap <silent> <leader>dg :<C-u>CocList diagnostics<cr>
nnoremap <silent> <leader>lo  :<C-u>CocList outline<cr>
nnoremap <silent> <leader>ls  :<C-u>CocList -I symbols<cr>

" Show info mappings
nnoremap <silent> <leader>ca :call CocAction('doHover')<CR>

" Highlight current identifier usage in current document
autocmd CursorHold * silent call CocActionAsync('highlight')


"""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
"""""""""""""""""""""""""""""""""""""""""""""
" autocmd vimenter * NERDTree
execute pathogen#infect()
" syntax on
" filetype plugin indent on
" "map <F8> :NERDTreeMirror<CR>
map <F3> :NERDTreeToggle<CR>
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeShowIgnoredStatus = 1
" let NERDTreeWinPos='right'
let NERDTreeWinPos='left'
let NERDTreeWinSize=35
"let g:NERDTreeNodeDelimiter = "\u00a0"
"

"""""""""""""""""""""""""""""""""""""""""""""
"nerdcommender

let g:NERDSpaceDelims=1
"""""""""""""""""""""""""""""""""""""""""""""
" omicomplete
set nocp  
filetype plugin on  

"""""""""""""""""""""""""""""""""""""""""""""
set omnifunc=omni

"""""""""""""""""""""""""""""""""""""""""""""
" AirLine 
"""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" let w:airline_section_z = 'zz'
 " let g:airline_section_z=%p%%%#__accent_bold#%{g:airline_symbols.linenr}%l%#__restore__#%#__accent_bold#/%L%{g:airline_symbols.maxlinenr}%#__restore__#%#__accent_bold#%{g:airline_symbols.colnr}%v%#__restore__#
 " '%{strftime("%y %m/%d-%H:%M")}'
" let g:airline_section_b = '%{strftime("%y %m/%d-%H:%M")}'
" let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#formatter = 'unique_tail'

" "tabline display name only,remove path
" let g:airline#extensions#tabline#fnamemod = ':t'

  let g:airline#extensions#tabline#show_splits = 1
  let g:airline#extensions#tabline#switch_buffers_and_tabs = 0
  let g:airline#extensions#tabline#show_buffers = 1


  " let g:airline#extensions#whitespace#symbol = '!'

let g:airline#extensions#ale#enabled = 1
let airline#extensions#ale#error_symbol = 'E:'
let airline#extensions#ale#warning_symbol = 'W:'
let airline#extensions#ale#show_line_numbers = 1
let airline#extensions#ale#open_lnum_symbol = '(L'
let airline#extensions#ale#close_lnum_symbol = ')'









"""""""python"""""""""
" set filetype=python
" au BufNewFile,BufRead *.py,*.pyw
" setf python



" set autoindent " same level indent
set smartindent " next level indent
"set expandtab
"set tabstop = 4
"set shiftwidth = 4
set softtabstop=4

let g:rustfmt_autosave = 1
let g:rustfmt_emit_files = 1
let g:rustfmt_fail_silently = 0

" inoremap <silent><expr> <TAB>
      " \ pumvisible() ? "\<C-n>" :
      " \ <SID>check_back_space() ? "\<TAB>" :
      " \ coc#refresh()
" inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" if has('nvim')
  " inoremap <silent><expr> <c-space> coc#refresh()
" else
  " inoremap <silent><expr> <c-@> coc#refresh()
" endif




"*********************   dense-analysis/ale   ************************
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fixers = {
            \   '*': ['remove_trailing_lines','trim_whitespace' ],
            \   'python': ['autopep8']
            \}
let g:ale_set_highlights = 0
"let g:ale_fix_on_save = 1 "auto Sava
let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
let g:ale_sign_column_always = 1 "��������������
let g:ale_sign_error = '?'
let g:ale_sign_warning = '?'
let g:ale_echo_msg_error_str = '?'
let g:ale_echo_msg_warning_str = '?'
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_linters_explicit = 1
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
let g:airline#extensions#ale#enabled = 1
let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''
let g:ale_linters = {
            \  'rust': ['analyzer'],
            \   'c': ['clangd'],
            \   'swift': ['swiftlint'],
            \   'markdown': ['markdownlint'],
            \   'sh': ['shellcheck'],
            \   'json': ['jsonlint'],
            \   'zsh': ['shellcheck']
            \}
let g:ale_list_window_size = 5
let g:ale_statusline_format = ['E?%d', 'W?%d', 'OK']
nnoremap <Leader>en <Plug>(ale_next)
nnoremap <Leader>ep <Plug>(ale_previous)


autocmd BufNewFile,BufRead *.rs set filetype=rust

let g:ale_fixers = { 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'] }

" Optional, configure as-you-type completions
set completeopt=menu,menuone,preview,noselect,noinsert
let g:ale_completion_enabled = 1
nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>

" "*********************   dense-analysis/ale   ************************
" " let g:ale_rust_analyzer_executable = "xxx"
" " g:ale_rust_cargo_use_check                         *g:ale_rust_cargo_use_check*
" " g:ale_rust_cargo_check_all_targets         *g:ale_rust_cargo_check_all_targets*
" " g:ale_rust_cargo_check_tests                     *g:ale_rust_cargo_check_tests*
" " g:ale_rust_cargo_check_examples               *g:ale_rust_cargo_check_examples*
" " g:ale_rust_cargo_default_feature_behavior
" " g:ale_rust_cargo_include_features           *g:ale_rust_cargo_include_features*
" " let g:ale_rust_cargo_use_clippy = 1
" "
" let g:ale_rust_cargo_use_clippy = executable('cargo clippy')

" let b:ale_fixers = ['prettier', 'eslint']
" let g:ale_fixers = {
            " \   '*': ['remove_trailing_lines','trim_whitespace' ],
            " \   'python': ['autopep8']
            " \}
" let g:ale_set_highlights = 0
" "let g:ale_fix_on_save = 1 "auto Sava
" let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
" let g:ale_sign_column_always = 1 "始终开启标志列
" let g:ale_sign_error = '•'
" let g:ale_sign_warning = '•'

" " let g:ale_sign_error = ��?��
" " let g:ale_sign_warning = ��?��


" let g:ale_echo_msg_error_str = ''
" let g:ale_echo_msg_warning_str = ''
" let g:ale_completion_delay = 500
" let g:ale_echo_delay = 20
" let g:ale_lint_delay = 500
" let g:ale_linters_explicit = 1
" let g:ale_lint_on_text_changed = 'normal'
" let g:ale_lint_on_insert_leave = 1
" "let g:airline#extensions#ale#enabled = 1
" let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
" let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
" let g:ale_c_cppcheck_options = ''
" let g:ale_cpp_cppcheck_options = ''
" let g:ale_linters = {
            " \   'c': ['clangd'],
            " \   'rust': ['rust-analyzer'],
            " \   'swift': ['swiftlint'],
            " \   'markdown': ['markdownlint'],
            " \   'sh': ['shellcheck'],
            " \   'json': ['jsonlint'],
            " \   'zsh': ['shellcheck']
            " \}
" let g:ale_list_window_size = 5
" let g:ale_statusline_format = ['E•%d', 'W•%d', 'OK']
" nnoremap <Leader>nn <Plug>(ale_next)
" nnoremap <Leader>pp <Plug>(ale_previous)
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

" statusline%{ALEGetStatusLine()}


" if 0
" "if has("code-minimap")
    " " for minimap
    " let g:minimap_width = 10
    " let g:minimap_auto_start = 1
    " let g:minimap_auto_start_win_enter =  1
    " nnoremap <silent> `` :nohlsearch<CR>:call minimap#vim#ClearColorSearch()<CR>
" endif



" have some trouble closing it
" map <silent> <F7> :Vexplore<cr>
" let g:netrw_hide = 1 "设置默认隐藏
" let g:netrw_liststyle = 3 " tree 模式显示风格
" let g:netrw_banner = 0 " 不显示帮助信息
" let g:netrw_browse_split = 0 "控制 <CR> 直接在当前窗口打开光标下文件
" let g:netrw_winsize = 30 " 占用宽度
" let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+' " 需要隐藏的文件
" let g:netrw_localrmdir = 'trash' "默认的删除工具使用 trash
" let g:netrw_altv = 1 " 控制 v 分裂的窗口位于右边
" let g:netrw_preview = 1 " 默认是水平分割, 此项设置使之垂直分割
" let g:netrw_alto = 0 " 控制预览窗口位于左侧或右侧, 与 netrw_preview 共同作用
" let g:netrw_chgwin = 2 " 控制按下 <CR> 的新文件在位于屏幕右侧的 2 号窗口打开, Lex 默认会设为 2
" let g:netrw_sort_by = 'time'
" let g:netrw_sort_direction = 'reverse'



" for tarbar
map <silent> <F9> :TagbarToggle<cr>
let g:tagbar_ctags_bin='~/.vim/bin/ctags'  " 设置ctags所在路径
let g:tagbar_width=30 " 设置tagbar的宽度
let g:tagbar_right = 1
" autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.rs call tagbar#autoopen()　
" autocmd BufReadPost *.rs call tagbar#autoopen()　
"打开vim时自动打开
" let g:tagbar_vertical=15
let g:tagbar_sort=0
let g:tagbar_autofocus=1
let g:tagbar_compact=1
"去除第一行的帮助信息
let g:tagbar_autoshowtag=1
"当编辑代码时，在tagbar自动追踪变量
autocmd VimEnter * wincmd 1
"如果不加这句，打开vim时，当前光标会在nerdtree区域
" autocmd VimEnter * nested :TagbarOpen

" 在某些情况下自动打开tagbar
"
"
" let g:coc_snippet_next = '<tab>'





" Use <tab> and <S-tab> to navigate completion list: >

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
  \ coc#pum#visible() ? coc#pum#next(1):
  \ <SID>check_back_space() ? "\<Tab>" :
  \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Use <c-space> to trigger completion: 
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif
" Use <CR> to confirm completion, use: >

inoremap <expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<CR>"

" To make <CR> to confirm selection of selected complete item or notify coc.nvim
" to format on enter, use: >

inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()
   			\: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Map <tab> for trigger completion, completion confirm, snippet expand and jump
" like VSCode: >

  " inoremap <silent><expr> <TAB>
    " \ coc#pum#visible() ? coc#_select_confirm() :
    " \ coc#expandableOrJumpable() ?
    " \ "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
    " \ <SID>check_back_space() ? "\<TAB>" :
    " \ coc#refresh()

  " function! s:check_back_space() abort
    " let col = col('.') - 1
    " return !col || getline('.')[col - 1]  =~# '\s'
  " endfunction

let g:coc_snippet_next = '<tab>'

"""" lightline """"""

let g:lightline = {}

let g:lightline.component_expand = {
      \  'linter_checking': 'lightline#ale#checking',
      \  'linter_infos': 'lightline#ale#infos',
      \  'linter_warnings': 'lightline#ale#warnings',
      \  'linter_errors': 'lightline#ale#errors',
      \  'linter_ok': 'lightline#ale#ok',
      \ }

let g:lightline.component_type = {
      \     'linter_checking': 'right',
      \     'linter_infos': 'right',
      \     'linter_warnings': 'warning',
      \     'linter_errors': 'error',
      \     'linter_ok': 'right',
      \ }

" let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ]] }

let g:lightline.active = {
            \ 'right': [ [ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_infos', 'linter_ok' ],
            \            [ 'lineinfo' ],
	    \            [ 'percent' ],
	    \            [ 'fileformat', 'fileencoding', 'filetype'] ] }

let g:lightline#ale#indicator_checking = "\uf110"
let g:lightline#ale#indicator_infos = "\uf129"
let g:lightline#ale#indicator_warnings = "\uf071"
let g:lightline#ale#indicator_errors = "\uf05e"
let g:lightline#ale#indicator_ok = "\uf00c"


" """""""""" Plug 'maximbaz/lightline-ale'  """"""""
" let g:lightline = {
  " \'active': {
  " \  'left': [
  " \    ['mode', 'paste'],
  " \    ['readonly', 'filename', 'modified', 'ale'],
  " \  ]
  " \},
  " \'component_function': {
  " \  'ale': 'ALEGetStatusLine'
  " \}
" \ }

" let g:lightline = {'colorscheme': 'onedark'}
" let g:lightline.component_expand = {
  " \   'linter_checking': 'lightline#ale#checking',
  " \   'linter_warnings': 'lightline#ale#warnings',
  " \   'linter_errors': 'lightline#ale#errors',
  " \   'linter_ok': 'lightline#ale#ok',
  " \ }
" let g:lightline.component_type = {
  " \   'linter_checking': 'left',
  " \   'linter_warnings': 'warning',
  " \   'linter_errors': 'error',
  " \   'linter_ok': 'left',
  " \ }
" let g:lightline.active = {
  " \   'left': [
  " \     ['mode', 'paste'],
  " \     ['readonly', 'filename', 'modified'],
  " \     ['linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok'],
  " \   ]
  " \ }

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" git-blamer 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:blamer_enabled = 1
let g:blamer_delay = 500
"default 1
let g:blamer_show_in_visual_modes = 1
"default 1
let g:blamer_show_in_insert_modes = 0
"default: ' '
let g:blamer_prefix = ' < '
"default: '<committer>, <committer-time> ? <summary>'
"Available options: <author>, <author-mail>, <author-time>, <committer>, <committer-mail>, <committer-time>, <summary>, <commit-short>, <commit-long>.
"let g:blamer_template = '<committer> <summary>'
"default: '%d/%m/%y %H:%M'
let g:blamer_date_format = ' %y/%m/%d'
" default: link Blamer Comment
" highlight Blamer guifg=lightgrey

"markdown-preview
"
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1





" cursor disappear solution
" echo -e "\033[?25h"
"
:ab #b #!/bin/bash
:ab #i #include
:ab #d #define
:ab #f #ifdef
:ab #e #endif
:ab #s <stdio.h>
:ab #l <stdlib.h>
:ab #m <math.h>
:ab #t <string.h>
:ab #p <mpi.h>
:ab #o <stdbool.h>
" 
":r xxx.txt
":r !date
":!ls
" move cursor to ab, then press K to see help infomation.
