" vim-mode, not old-school compatible vi mode.
set nocompatible

" do file-type syntax highlighting
syntax on

" tabs are 2-space pairs.
set shiftwidth=2
set softtabstop=2
" expand \t characters to equivalent number of spaces.
set expandtab

" adjust color scheme for dark terminal backround
set background=dark

" highlight and match search results as you are searching
set hlsearch
set incsearch

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
set cul " highlight current line
