
set backspace=indent,eol,start
let mapleader = ','

"---------- Visuals ----------"
syntax enable
set number
set t_CO=256
colorscheme desert
set macligatures

set guioptions-=e
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"---------- Search ----------"
set hlsearch
set incsearch

"---------- Mappings ----------"
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader><space> :nohlsearch<cr>

"---------- Auto commands ----------"

augroup sourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
