" vim-mode, not old-school compatible vi mode.
set nocompatible

syntax on
set shiftwidth=2
set softtabstop=2
set expandtab

set background=dark

" highlight and match search results as you are searching
set hlsearch
set incsearch

set cul " highlight current line

" 2 line status line.  Example:
" .vimrc[+] [TYPE=VIM] [POS=0010,0001][76%] [LEN=13]  
" the [+] indicates a modified file.
set statusline=%f%m%r%h%w\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
set laststatus=2

" turn line numbers on
set number

" highlight columns 81 and 101 in lightgrey
set colorcolumn=81,101
hi ColorColumn ctermbg=lightgrey

" FuzzyFinder commands and settings
let mapleader = ","
map <Leader>f :FufFile<CR>
map <Leader>d :FufDir<CR>
map <Leader>b :FufBuffer<CR>
let g:fuf_ignoreCase = 1
