let mapleader=","

" Enable line numbers
set number

" Always show current position
set ruler

" Ignore case when searching
set ignorecase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Don't redraw while executing macros
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

" Add a bit of extra margin to the left
set foldcolumn=1

" Enable syntax highighting
syntax enable

" Set backspace behavior
set backspace=indent,eol,start

" Disable error sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set color scheme
colorscheme desert

" Set dark background
set background=dark

" Use spaces instead of tabs
set expandtab

" Enable smart tabs
set smarttab

" Set 7 lines to the cursor - when moving vertically using j/k
set so=7

" 1 tab = 2 spaces
set shiftwidth=2
set tabstop=2

" Auto indent
set ai
" Smart indent
set si
" Wrap lines
set wrap

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Open vimrc in a new tab
nmap <Leader>ev :tabedit $MYVIMRC<cr>

" Tab management
nmap <leader>tn :tabnew<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove<cr>
nmap <leader>t<leader> :tabnext

" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Always show the status line
set laststatus=2

" Automatically source vimrc
augroup sourcing
  autocmd!
  autocmd! BufWritePost .vimrc source %
augroup END