" __     ___                     
" \ \   / (_)_ __ ___  _ __ ___  
"  \ \ / /| | '_ ` _ \| '__/ __| 
"   \ V / | | | | | | | | | (__  
"    \_/  |_|_| |_| |_|_|  \___| 
"                                

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC

set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8
set syntax=on

let &t_ut=''
set number
set relativenumber
set ruler
set cursorline
syntax enable
syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set list
set listchars=tab:▸\ ,trail:▫
set scrolloff=5

" Prevent auto line split
set wrap
set tw=0

set indentexpr=
" Better backspace
set backspace=indent,eol,start

" set foldmethod=manual
" set foldlevel=1
" set foldclose=all
set foldmethod=indent
set foldlevel=99

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

let mapleader=" "


set laststatus=2
set autochdir
set showcmd
set formatoptions-=tc

" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu                                                 " show a
" navigable menu for tab completion
set wildmode=longest,list,full

" Searching options
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

map <LEADER><CR> :nohlsearch<CR>
map <LEADER>sc :set spell!<CR>
map <LEADER>vc :e ~/.vim/vimrc<CR>
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>4cl

map K 5k
map J 5j

map sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map sj :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sl :set splitright<CR>:vsplit<CR>
map <LEADER>j <C-w>j
map <LEADER>k <C-w>k
map <LEADER>h <C-w>h
map <LEADER>l <C-w>l

" Resize splits with arrow keys

map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" ===
" === Tab management
" ===
" Create a new tab with tu
map tu :tabe<CR>
" Move around tabs with tn and ti
map tn :tabnext<CR>
map ti :tabNext<CR>

map s <nop>
map R :source vimrc<CR>
map ; :
map Q :q<CR>
map S :w<CR>

map <LEADER>fd /\(\<\w\+\>\)\_s*\1


call plug#begin('~/.vim/plugged')

Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'junegunn/goyo.vim' " distraction free writing mode
Plug 'fadein/vim-FIGlet'
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe'
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }
Plug 'vimwiki/vimwiki'
Plug 'mbbill/undotree'
Plug 'majutsushi/tagbar', { 'on': 'TagbarOpenAutoClose' }

call plug#end()


let g:SnazzyTransparent=1


let g:python_highlight_all = 1


let b:ale_linters = ['pylint']
let b:ale_fixers = ['autopep8', 'yapf']
map ff :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapUpdir = ""
let NERDTreeMapUpdirKeepOpen = "l"
let NERDTreeMapOpenSplit = ""
let NERDTreeOpenVSplit = ""
let NERDTreeMapActivateNode = "i"
let NERDTreeMapOpenInTab = "o"
let NERDTreeMapPreview = ""
let NERDTreeMapCloseDir = "n"
let NERDTreeMapChangeRoot = "y"
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

map <LEADER>tm :TableModeToggle<CR>
map <LEADER>tb :TagbarOpenAutoClose<CR>

map <LEADER>gy :Goyo<CR>


nnoremap gd :YcmCompleter GoToDefinitionElseDeclaration<CR>
nnoremap g/ :YcmCompleter GetDoc<CR>
nnoremap gt :YcmCompleter GetType<CR>
nnoremap gr :YcmCompleter GoToReferences<CR>
let g:ycm_autoclose_preview_window_after_completion=0
let g:ycm_autoclose_preview_window_after_insertion=1
let g:ycm_use_clangd = 0
" let g:ycm_python_binary_path = g:ycm_python_interpreter_path

let g:indent_guide_guide_size=1
let g:indent_guide_start_level=2
let g:indent_guide_enable_on_vim_startup=1
let g:indent_guide_color_change_percent=1

