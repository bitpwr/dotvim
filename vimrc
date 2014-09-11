execute pathogen#infect()
execute pathogen#helptags()

filetype plugin indent on
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
set incsearch

syntax on
set background=dark 
colo gruvbox
"colo evening

" open file explorere with F2
map <F2> :Ve <CR>
imap <F2> <ESC> :Ve <CR>

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

" close buffers
"map <C-w> :bd<CR>

" scroll screen up/down
map <C-DOWN> <C-e>
map <C-UP> <C-y>

