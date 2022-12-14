"set directory=$HOME/.vim/swap//
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
set cursorline
set ignorecase smartcase
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
"set termencoding=utf-8,gbk
set encoding=utf-8
set tabstop=4
set shiftwidth=4
"set number relativenumber
set number
set cursorline
"set cursorcolumn
"""""""""""""""""""""""""""""""""""


syntax enable
let g:solarized_termcolors=256
set background=dark
set termguicolors
colorscheme solarized
"set background=light

"colorscheme inkpot
"colorscheme SolarizedDark
" colorscheme jellybeans 
" if &diff
    " colorscheme jellybeans 
" endif
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
autocmd InsertEnter * se cul
" hi Function     cterm=NONE                      ctermfg=darkblue
" hi comment      cterm=NONE ctermfg=DarkGrey    guibg=#000000   guifg=Black
" hi Number                                       ctermfg=red
hi cursorline   cterm=bold
" hi CursorLine   cterm=NONE ctermbg=black ctermfg=yellow guibg=NONE guifg=NONE
" hi CursorLine   cterm=bold ctermbg=black ctermfg=None guibg=NONE guifg=NONE

hi Search       guibg=#ffffff   guifg=black
" hi Search     cterm=underline ctermbg=white   ctermfg=black
hi Visual       guibg=pink      guifg=black
hi SignColumn   guibg=NONE                      ctermbg=NONE




let mapleader = ","
map <silent> <leader>ss :source ~/.vimrc<cr>
map <silent> <leader>ee :e ~/.vimrc<cr>
autocmd! bufwritepost .vimrc source ~/.vimrc




"GitGutter keymap
nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)
nmap <leader>hp <Plug>(GitGutterPreviewHunk)
" let g:gitgutter_highlight_lines = 1
" let g:gitgutter_highlight_linenrs = 1
" vim-gitgutter used to do this by default:
highlight! link SignColumn LineNr
" set signcolumn=yes
" hi GitGutterAdd    guifg=#009900 ctermfg=2
" hi GitGutterChange guifg=#bbbb00 ctermfg=3
" hi GitGutterDelete guifg=#ff2222 ctermfg=1
" hi link GitGutterChangeLine DiffText
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

"Plug 'inkarkat/vim-mark' not working 
Plug 'junegunn/vim-easy-align'
Plug 'universal-ctags/ctags'
Plug 'scrooloose/nerdtree'
"Plug 'scrooloose/nerdcommender'
"Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'skywind3000/asyncrun.vim'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'NoahTheDuke/vim-just'


" 2022.7.27 for rust
Plug 'rust-lang/rust.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" Plug 'jiangmiao/auto-pairs'

Plug 'dense-analysis/ale'
" Plug 'itchyny/lightline.vim'
" Plug 'maximbaz/lightline-ale'
"
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" markdown content
Plug 'jszakmeister/markdown2ctags'
" Plug 'wfxr/minimap.vim'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
Plug 'tpope/vim-surround'

Plug 'majutsushi/tagbar'
" Plug 'Yggdroot/LeaderF' 
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'linjiX/LeaderF-git'

" for git 
Plug 'tpope/vim-fugitive'
Plug 'zivyangll/git-blame.vim'
Plug 'airblade/vim-gitgutter'
Plug 'mhinz/vim-signify'
Plug 'junegunn/gv.vim'
Plug 'rhysd/conflict-marker.vim'

Plug 'APZelos/blamer.nvim'


call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf setting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>hh :History<cr>
nmap <silent> <leader>ff :Files<cr>
nmap <silent> <leader>gf :GFiles?<cr>
nmap <silent> <leader>tt :Tags<cr>
nmap <silent> <leader>ll :Lines<cr>
nmap <silent> <leader>lp :Locate<space>
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leaderf 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:Lf_GtagsAutoGenerate = 1
" don't show the help in normal mode
let g:Lf_HideHelp = 0
let g:Lf_UseCache = 1
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_StlSeparator = { 'left': "\ue0b0", 'right': "\ue0b2", 'font': "DejaVu Sans Mono for Powerline" }
let g:Lf_PreviewResult = {'Function': 0, 'BufTag': 0 }

let g:Lf_ShortcutF = "<leader>ff"
let g:Lf_DefaultMode = "Regex"
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>

" noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR>
" noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR>
" search visually selected text literally
xnoremap gf :<C-U><C-R>=printf("Leaderf! rg -F -e %s ", leaderf#Rg#visual())<CR>
noremap go :<C-U>Leaderf! rg --recall<CR>

" should use `Leaderf gtags --update` first
" let g:Lf_GtagsAutoGenerate = 0
" let g:Lf_Gtagslabel = 'native-pygments'
" noremap <leader>fr :<C-U><C-R>=printf("Leaderf! gtags -r %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fd :<C-U><C-R>=printf("Leaderf! gtags -d %s --auto-jump", expand("<cword>"))<CR><CR>
" noremap <leader>fo :<C-U><C-R>=printf("Leaderf! gtags --recall %s", "")<CR><CR>
" noremap <leader>fn :<C-U><C-R>=printf("Leaderf gtags --next %s", "")<CR><CR>
" noremap <leader>fp :<C-U><C-R>=printf("Leaderf gtags --previous %s", "")<CR><CR>

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
hi MarkWord1  ctermbg=1     ctermfg=Black  guibg=#8CCBEA    guifg=Black
hi MarkWord2  ctermbg=2     ctermfg=Black  guibg=#A4E57E    guifg=Black
hi MarkWord3  ctermbg=3     ctermfg=Black  guibg=#FFDB72    guifg=Black
hi MarkWord4  ctermbg=4     ctermfg=Black  guibg=#FF7272    guifg=Black
hi MarkWord5  ctermbg=5     ctermfg=Black  guibg=#FFB3FF    guifg=Black
hi MarkWord6  ctermbg=6     ctermfg=Black  guibg=#9999FF    guifg=Black
nmap <silent> <leader>hl <Plug>MarkSet
nmap <silent> <leader>hh <Plug>MarkClear
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! s:compileByFileType()
  if &filetype=="c"
    if has("cscope")
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
    endif
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
  elseif &filetype=="rust"
      " Use `[g` and `]g` to navigate diagnostics
      " Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
      nmap <silent> [g <Plug>(coc-diagnostic-prev)
      nmap <silent> ]g <Plug>(coc-diagnostic-next)

      nmap <C-@>g <Plug>(coc-definition)
      nmap <C-@>y <Plug>(coc-type-definition)
      nmap <C-@>i <Plug>(coc-implementation)
      nmap <C-@>r <Plug>(coc-references)

      " Symbol renaming.
      nmap <leader>rn <Plug>(coc-rename)
      " Formatting selected code.
      xmap <leader>f  <Plug>(coc-format-selected)
      nmap <leader>f  <Plug>(coc-format-selected)
  endif
endfunction

autocmd FileType * call s:compileByFileType()


"""""""""""""""""""""""""""""""""""""""""""""
" NerdTree
"""""""""""""""""""""""""""""""""""""""""""""
"map <F8> :NERDTreeMirror<CR>
map <F7> :NERDTreeToggle<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let g:NERDTreeShowIgnoredStatus = 1
let NERDTreeWinPos='right'
"let NERDTreeWinPos='left'
let NERDTreeWinSize=50
"let g:NERDTreeNodeDelimiter = "\u00a0"
let g:NERDTreeNodeDelimiter = " "

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


nmap <tab> :bn<cr>
nmap <S-tab> :bp<cr>
nmap <C-q> :bd<cr>







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

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" if has('nvim')
  " inoremap <silent><expr> <c-space> coc#refresh()
" else
  " inoremap <silent><expr> <c-@> coc#refresh()
" endif

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)



"*********************   dense-analysis/ale   ************************
let b:ale_fixers = ['prettier', 'eslint']
let g:ale_fixers = {
            \   '*': ['remove_trailing_lines','trim_whitespace' ],
            \   'python': ['autopep8']
            \}
let g:ale_set_highlights = 0
"let g:ale_fix_on_save = 1 "auto Sava
let g:ale_echo_msg_format = '[#%linter%#] %s [%severity%]'
let g:ale_sign_column_always = 1 "??????????????????????????????????????????
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
" let g:ale_sign_column_always = 1 "?????????????????????
" let g:ale_sign_error = '???'
" let g:ale_sign_warning = '???'

" " let g:ale_sign_error = ?????????????
" " let g:ale_sign_warning = ?????????????


" let g:ale_echo_msg_error_str = '???'
" let g:ale_echo_msg_warning_str = '???'
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
" let g:ale_statusline_format = ['E???%d', 'W???%d', 'OK']
" nnoremap <Leader>nn <Plug>(ale_next)
" nnoremap <Leader>pp <Plug>(ale_previous)
" nmap <silent> <C-k> <Plug>(ale_previous_wrap)
" nmap <silent> <C-j> <Plug>(ale_next_wrap)

" statusline%{ALEGetStatusLine()}




" for netrw
let g:netrw_hide = 1 "??????????????????
let g:netrw_liststyle = 3 " tree ??????????????????
let g:netrw_banner = 0 " ??????????????????
let g:netrw_browse_split = 0 "?????? <CR> ??????????????????????????????????????????
let g:netrw_winsize = 30 " ????????????
let g:netrw_list_hide= '\(^\|\s\s\)\zs\.\S\+' " ?????????????????????
let g:netrw_localrmdir = 'trash' "??????????????????????????? trash
let g:netrw_altv = 1 " ?????? v ???????????????????????????
let g:netrw_preview = 1 " ?????????????????????, ??????????????????????????????
let g:netrw_alto = 0 " ???????????????????????????????????????, ??? netrw_preview ????????????
" let g:netrw_chgwin = 2 " ???????????? <CR> ???????????????????????????????????? 2 ???????????????, Lex ??????????????? 2


if has("code-minimap")
    " for minimap
    let g:minimap_width = 10
    let g:minimap_auto_start = 1
    let g:minimap_auto_start_win_enter =  1
    nnoremap <silent> `` :nohlsearch<CR>:call minimap#vim#ClearColorSearch()<CR>
endif

" for tarbar
map <silent> <F9> :TagbarToggle<cr>
let g:tagbar_ctags_bin='~/.vim/bin/ctags'  " ??????ctags????????????
let g:tagbar_width=30 " ??????tagbar?????????
let g:tagbar_left = 1
" autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx,*.rs call tagbar#autoopen()???
" autocmd BufReadPost *.rs call tagbar#autoopen()???
" autocmd vimenter * NERDTree
"??????vim???????????????
" let g:tagbar_vertical=15
let g:tagbar_sort=0
let g:tagbar_autofocus=1
let g:tagbar_compact=1
"??????????????????????????????
let g:tagbar_autoshowtag=1
"????????????????????????tagbar??????????????????
autocmd VimEnter * wincmd 1
"???????????????????????????vim????????????????????????nerdtree??????
" autocmd VimEnter * nested :TagbarOpen

" ??????????????????????????????tagbar
"
"
let g:coc_snippet_next = '<tab>'





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
" let g:blamer_enabled = 1
" let g:blamer_delay = 500
" "default 1
" let g:blamer_show_in_visual_modes = 1
" "default 1
" let g:blamer_show_in_insert_modes = 0
" "default: ' '
" let g:blamer_prefix = ' < '
" "default: '<committer>, <committer-time> ? <summary>'
" "Available options: <author>, <author-mail>, <author-time>, <committer>, <committer-mail>, <committer-time>, <summary>, <commit-short>, <commit-long>.
" "let g:blamer_template = '<committer> <summary>'
" "default: '%d/%m/%y %H:%M'
" let g:blamer_date_format = ' %y/%m/%d'
" default: link Blamer Comment
" highlight Blamer guifg=lightgrey






" cursor disappear solution
" echo -e "\033[?25h"
