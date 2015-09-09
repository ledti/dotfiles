call plug#begin('~/.vim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'bling/vim-airline'
Plug 'tpope/vim-surround'
Plug 'Lokaltog/vim-easymotion'
Plug 'scrooloose/syntastic'
Plug 'morhetz/gruvbox'
Plug 'godlygeek/tabular'
Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-sleuth'

call plug#end()

set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set hlsearch
set ignorecase
set smartcase
set nocompatible
set number
set pastetoggle=<F2>
set t_Co=256
set background=dark
colorscheme gruvbox
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
syntax on
filetype indent plugin on
vnoremap <C-c> "+y
nmap <F5> :%sort u<RETURN>
