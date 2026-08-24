" ---

" Default thingys

" Título bonito
set title
set titlestring=∀lacirrty\ -\ %t
" Plugin & syntax
filetype plugin indent on
syntax on
" Tab-smart-match
set softtabstop=4
set smartindent
set showmatch
" Line numbers
set number
set relativenumber

" ---

" Responsiveness

" Cambiar el tiempo de espera del cursor
set updatetime=67
" Cambiar el tiempo de espera en secuencias
set ttimeoutlen=35

" ---

" Indentation and tabs
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

" ---

" Search
set ignorecase
set smartcase
set incsearch
set hlsearch

" ---

" Appearance
set background=dark
set signcolumn=yes
set cursorline
set colorcolumn=80

" ---

" Backspace behavior
set backspace=indent,eol,start

" --- 

" Split window behavior
set splitbelow
set splitright

" ---

" Custom thingys

" dw/diw/ciw treat dash-separated words as single word
set iskeyword+=-
" Keep cursor 8 lines from top/bottom
set scrolloff=8
" Lightline
set laststatus=2

" ---
