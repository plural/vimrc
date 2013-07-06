" vim-mode, not old-school compatible vi mode.
set nocompatible

" ===================== VUNDLE =================================================
filetype off " required by vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'tpope/vim-rails.git'
" vim-scripts repos
Bundle 'L9'
Bundle 'FuzzyFinder'
Bundle 'altercation/vim-colors-solarized.git'
" non github repos
Bundle 'git://git.wincent.com/command-t.git'
Bundle 'Valloric/YouCompleteMe'
" git repos on your local machine (ie. when working on your own plugin)
" example: Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
" ===================== END VUNDLE =============================================

syntax on
set shiftwidth=2
set softtabstop=2
set expandtab
set backspace=indent,eol,start

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

" system vi is too old.  lame.
if version >= 703
  " highlight columns 81 and 101 in lightgrey
  set colorcolumn=81,101
endif
hi ColorColumn ctermbg=lightgrey

" highlight evil tabs and trailing whitespace
highlight EvilWhitespace ctermbg=red guibg=red
let m1 = matchadd('EvilWhitespace', '\t', -1)
let m2 = matchadd('EvilWhitespace', '\s\+$', -1)

" FuzzyFinder commands and settings
let mapleader = ","
map <Leader>f :FufFile<CR>
map <Leader>d :FufDir<CR>
map <Leader>b :FufBuffer<CR>
let g:fuf_ignoreCase = 1

" Solarized color theme.
colorscheme solarized
