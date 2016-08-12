set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" colorscheme plugins
Plugin 'altercation/vim-colors-solarized'
" Plugin 'tomasr/molokai'
" Plugin 'chriskempson/vim-tomorrow-theme'
" other plugins
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdcommenter'
Plugin 'myusuf3/numbers.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'moll/vim-node'
Plugin 'ternjs/tern_for_vim'
Plugin 'Shougo/unite.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/terminus'
Plugin 'andreshazard/vim-freemarker'
" Plugin 'nathanaelkane/vim-indent-guides'
" Plugin 'Yggdroot/indentLine'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Vim Setting
" show line numbers
set number
" enable syntax
syntax enable
" use dark background
let g:solarized_termcolors=16
set t_Co=16
set background=dark
colorscheme solarized

" set nowrap
set nowrap

" tab and indent setting
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" open cursor line and column
set cursorline
set cursorcolumn

" updatetime
set updatetime=250
" search
set showmatch
set smartcase

set hlsearch
set incsearch

" copy/paste
" "set paste
set clipboard=unnamed " plus

" spell check, to be activated manually
set spelllang=en_us
set nospell

" vim-airline configuration
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
" NERDTreeTabs configuration 
let g:nerdtree_tabs_open_on_console_startup = 1
" NERDTree git plugin configuration
" https://github.com/Xuyuanp/nerdtree-git-plugin
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" Vim Mapping
" leader
let g:mapleader = ","

" write and quit
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>

" switch tab
nnoremap ¬ :tabn<CR>
nnoremap ˙ :tabp<CR>

" switch split window
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" unite buffer list
noremap <c-e> :Unite buffer<CR>

" insert mode uppercase the current word
"  <esc> : go to normal mode
"  v 	 : visual mode
"  iw 	 : select the current word
"  U 	 : uppercase selection
"  i 	 : back to insert mode
inoremap <c-u> <esc>viwUi

" Open MYVIMRC in a vsplit
nnoremap <leader>ev :split $MYVIMRC<cr>

" Source MYVIMRC
nnoremap <leader>sv :source $MYVIMRC<cr>

" Leave insert mode (like <esc>) and disable <esc>
inoremap jk <esc>
inoremap <special> <esc> <nop>
inoremap <esc>^[ <esc>^[

" Disable arrow keys

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
