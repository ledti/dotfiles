call plug#begin('~/.local/share/nvim/plugged')

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
set number
set pastetoggle=<F2>
set background=dark
let g:airline_powerline_fonts = 1
colorscheme gruvbox
highlight Normal ctermbg=NONE
syntax on
filetype indent plugin on
vnoremap <C-c> "+y
nmap <F5> :3,$sort ui<RETURN>
nmap <F6> :%s/\s\+$//<RETURN>
