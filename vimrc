set nocompatible

filetype off

set runtimepath+=~/.vim/bundle/vundle.vim/

call vundle#begin()

" core
Bundle 'gmarik/vundle.vim'

" workflow
Bundle 'kien/ctrlp.vim'
Bundle 'townk/vim-autoclose'
Bundle 'scrooloose/syntastic'

" language
Bundle 'othree/html5.vim'
Bundle 'leshill/vim-json'
Bundle 'jnwhiteh/vim-golang'
Bundle 'digitaltoad/vim-jade'
Bundle 'plasticboy/vim-markdown'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'ap/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'

" interface
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'

" colorschemes
Bundle 'flazz/vim-colorschemes'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-colorscheme-switcher'

call vundle#end()

let g:vim_markdown_folding_disabled=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled=1

filetype plugin on
filetype indent on

syntax on

colorscheme busierbee

" disable background color
hi Normal ctermfg=none ctermbg=none
hi NonText ctermfg=none ctermbg=none

" disable files
set nobackup
set noswapfile

" show numbers
set number

" indention
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

" this is for airline
set laststatus=2
set ttimeoutlen=50

" threat backspace as backspace
set backspace=indent,eol,start

" overwrite indention for specific files
autocmd FileType make,python setlocal noexpandtab
autocmd FileType html,json,javascript setlocal tabstop=2 shiftwidth=2
