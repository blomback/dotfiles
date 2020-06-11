" 
"
"       
"       ██▒   █▓ ██▓ ███▄ ▄███▓ ██▀███   ▄████▄  
"      ▓██░   █▒▓██▒▓██▒▀█▀ ██▒▓██ ▒ ██▒▒██▀ ▀█  
"       ▓██  █▒░▒██▒▓██    ▓██░▓██ ░▄█ ▒▒▓█    ▄ 
"        ▒██ █░░░██░▒██    ▒██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒
"         ▒▀█░  ░██░▒██▒   ░██▒░██▓ ▒██▒▒ ▓███▀ ░
"         ░ ▐░  ░▓  ░ ▒░   ░  ░░ ▒▓ ░▒▓░░ ░▒ ▒  ░
"         ░ ░░   ▒ ░░  ░      ░  ░▒ ░ ▒░  ░  ▒   
"           ░░   ▒ ░░      ░     ░░   ░ ░        
"            ░   ░         ░      ░     ░ ░      
"           ░                           ░        
"
" 

" Use space  as leader key
let mapleader=" "

" Enable plugins
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'chriskempson/base16-vim'
Plug 'preservim/nerdtree'
call plug#end()

" Enable line numbers
set number

" Always show current position
set ruler

" Ignore case when searching
set ignorecase

" Don't highlight search results
set nohlsearch

" Enable incremental search 
set incsearch

" Don't redraw while executing macros
set lazyredraw

" Indicate matching brackets 
set showmatch

" Blinking interval for brackets 
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

 
" Indentation
set expandtab                 " Use spaces instead of tabs
set smarttab                  " Enable smart tabs
set so=6                      " Set 6 lines below the cursor
set shiftwidth=2              " 1 tab = 2 spaces
set tabstop=2
set ai                        " Auto indent
set si                        " Smart indent
set wrap                      " Wrap lines
set noswapfile
set laststatus=2              " Always show the status line

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Open vimrc in a new tab
nmap <leader>ev :tabedit $MYVIMRC<cr>

" Tab management
nmap <leader>tn :tabnew<cr>
nmap <leader>to :tabonly<cr>
nmap <leader>tc :tabclose<cr>
nmap <leader>tm :tabmove<cr>
nmap <leader>t<leader> :tabnext<cr>

" Window management 
nmap <leader>h :wincmd h<cr>
nmap <leader>j :wincmd j<cr>
nmap <leader>k :wincmd k<cr>
nmap <leader>l :wincmd l<cr>

" Toggle filebrowser
nmap <leader>o :NERDTreeToggle<cr>

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Visual settings
colorscheme base16-ashes
set background=dark
highlight LineNr ctermfg=grey ctermbg=black
highlight FoldColumn ctermfg=grey ctermbg=black
let g:lightline = {
  \ 'colorscheme': 'seoul256',
  \ }

if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif

" Automatically source vimrc when saved
augroup sourcing
  autocmd!
  autocmd! BufWritePost .vimrc source %
augroup END
