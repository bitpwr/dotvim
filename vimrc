" init pathogen
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
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

" To be removed?
set autochdir       " change current dir to same as current file - obsolete


" colors
"""""""""""""""""""""""""""""""""""""""""""
set background=dark 
colo gruvbox

if has("gui_running")
    set guioptions-=T
    set guioptions+=e
    set t_Co=256
    set guitablabel=%M\ %t
else
    set t_Co=16
endif

set encoding=utf8

" General key mappings
"""""""""""""""""""""""""""""""""""""""""""

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

" scroll screen up/down
map <C-DOWN> <C-e>
map <C-UP> <C-y>

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

