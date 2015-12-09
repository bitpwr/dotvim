" Setting up NeoBundle - the vim plugin bundler
set nocompatible               " Be iMproved

" NeoBundle check and auto install
let iCanHazNeoBundle=1
let NeoBundle_readme=expand('~/.vim/bundle/neobundle.vim/README.md')
if !filereadable(NeoBundle_readme)
    echo "Installing NeoBundle.."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
    let iCanHazNeoBundle=0
endif

" init neobundle
if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

" plugins using NeoBundle goes here
NeoBundle 'morhetz/gruvbox'
NeoBundle 'scrooloose/nerdtree.git'
NeoBundle 'altercation/vim-colors-solarized.git'
NeoBundle 'scrooloose/nerdcommenter'
NeoBundle 'moll/vim-bbye'
NeoBundle 'peterhoeg/vim-qml'
NeoBundle 'jiangmiao/auto-pairs'

call neobundle#end()

filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

syntax on

" general editor settings
""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set wildmenu    " command line completion
set wildignore=*.o,*~,*.pyc     " Ignore compiled files
set so=5        " scroll offset
set ruler       " show current position
set number      " line numbers
set hid         " do not close hidden buffers
set nocompatible
set nobackup    " no backcup files
set ls=2        " show status bar even for single files
set noswapfile  " no .swp files created
set backspace=2

" searching
set ignorecase
set smartcase       " case sensitive for upper case when searching
set hlsearch        " highlight previous pattern
"set incsearch

" programming
set showmatch       " jump to matchin bracket
set matchtime=2
set matchpairs+=<:> " add <> as mathing pairs

" show all characters, set list/nolist
set lcs=eol:$
set lcs+=tab:»·
set lcs+=trail:·
set lcs+=nbsp:%

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

set showcmd         "to show when <leader> waiting for command

" To be removed?
set autochdir       " change current dir to same as current file - obsolete


" colors
"""""""""""""""""""""""""""""""""""""""""""
set background=dark 

if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
else
    let g:gruvbox_italic=0
    "set t_Co=16
    set t_Co=256
endif

colo gruvbox
set encoding=utf8

" General key mappings
"""""""""""""""""""""""""""""""""""""""""""
" set <leader>
let mapleader="\<space>"

" move within wrapped lines
map <DOWN> gj
"imap <DOWN> <ESC>gji
map <UP> gk
"imap <UP> <ESC>gki

" jump between words
map <C-RIGHT> <S-RIGHT>
map <C-LEFT> <S-LEFT>

" switch between buffers
map <A-RIGHT> :bn<CR>
map <A-LEFT> :bp<CR>
imap <A-RIGHT> <ESC>:bn<CR>
imap <A-LEFT> <ESC>:bp<CR>
map <F6> :bn<CR>
map <F5> :bp<CR>
imap <F6> <ESC>:bn<CR>
imap <F5> <ESC>:bp<CR>

" scroll screen up/down
map <C-DOWN> <C-e>
map <C-UP> <C-y>

" to avoid removing indent when typing #
:inoremap # X<BS>#

" Plugin settings
"""""""""""""""""""""""""""""""""""""""""""

" NERD tree
map <F2> :NERDTreeToggle<CR>
imap <F2> <ESC> :NERDTreeToggle<CR>
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" NERD Commenter
map <F7> :call NERDComment(1, 'toggle')<CR>
imap <F7> <ESC> :call NERDComment(1, 'toggle')<CR>

" Bbye - buffer delete
map <F4> :Bdelete<CR>

