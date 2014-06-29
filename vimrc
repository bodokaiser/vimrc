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
Bundle 'yggdroot/indentline'

" language
Bundle 'othree/html5.vim'
Bundle 'fatih/vim-go'
Bundle 'leshill/vim-json'
Bundle 'digitaltoad/vim-jade'
Bundle 'plasticboy/vim-markdown'
Bundle 'ap/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'jelera/vim-javascript-syntax'

" interface
Bundle 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'

" colorschemes
Bundle 'flazz/vim-colorschemes'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-colorscheme-switcher'

call vundle#end()

" configure plugins
let g:go_play_open_browser=0
let g:syntastic_check_on_wq=0
let g:vim_markdown_folding_disabled=1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled=1

filetype plugin on
filetype indent on

syntax on

colorscheme busierbee

" disable background color
hi Visual ctermfg=180 ctermbg=240
hi Normal ctermfg=none ctermbg=none
hi NonText ctermfg=none ctermbg=none

" disable files
set nobackup
set noswapfile

" show line number
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
autocmd FileType go,make,python setlocal noexpandtab
autocmd FileType html,json,javascript setlocal tabstop=2 shiftwidth=2
