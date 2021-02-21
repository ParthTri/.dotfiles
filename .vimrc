set nocompatible
filetype off
syntax on
set ruler
set textwidth=0
set number
set encoding=utf-8
set backspace=indent,eol,start
set softtabstop=2

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'joshdick/onedark.vim'
Plug 'vim-scripts/indentpython.vim'
Plug 'nvie/vim-flake8'

call plug#end()

colorscheme onedark
let g:rehash256 = 1


set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

au BufNewFile, BufRead *.py
  \| set shiftwidth=4
  \| set textwidth=79
  \| set expandtab
  \| set autoindent

nmap <F6> :NERDTreeToggle<CR>

highlight Normal ctermbg=none
highlight NonText ctermbg=none

let g:kite_supported_languages = ['*']
let g:kite_previous_placeholder = '<C-H>'
let g:kite_next_placeholder = '<C-L>'
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2
