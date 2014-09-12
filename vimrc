" init pathogen
execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
syntax on

set tabstop=4
set shiftwidth=4
set expandtab
"set cindent
set hid
set ignorecase
set smartcase       " case sensitive for upper case
set number
set autochdir
set ls=2
set hlsearch
"set scrolloff=2
set showmatch
set matchtime=2
set matchpairs+=<:>
set showmode
set showcmd
set ruler
set wildmenu
set smartindent
set smarttab
set nobackup
"set incsearch

" colorscheme
set background=dark 
"set t_Co=16
colo gruvbox

" General key mappings
"""""""""""""""""""""""""""""""""""""""""""

" move within wrapped lines
map <DOWN> gj
imap <DOWN> <ESC>gji
map <UP> gk
imap <UP> <ESC>gki

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
map <F7> :call NERDComment(1, 'toggle')<CR><CR>
imap <F7> <ESC> :call NERDComment(1, 'toggle')<CR><CR>

