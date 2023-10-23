
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
""" vim ripgrep"
" Plug 'wookayin/fzf-ripgrep.vim'
Plug 'jremmen/vim-ripgrep'


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
"ds( cs({  yss("
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
"Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap'}
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

Plug 'lilydjwg/colorizer'

call plug#end()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

