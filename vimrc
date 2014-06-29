set nocompatible

filetype off

set runtimepath+=~/.vim/bundle/vundle.vim/

call vundle#begin()

" core
Bundle 'gmarik/vundle.vim'

" workflow
Bundle 'kien/ctrlp.vim'
Bundle 'townk/vim-autoclose'
Bundle 'scroolose/syntastic'
Bundle 'nathanaelkane/vim-indent-guides'

" language
Bundle 'othree/html5.vim'
Bundle 'leshill/vim-json'
Bundle 'jnwhiteh/vim-golang'
Bundle 'digitaltoad/vim-jade'
Bundle 'plasticboy/vim-markdown'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'skammer/vim-css-color'
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

filetype plugin on
filetype indent on

syntax on

colorscheme busierbee

hi Normal ctermfg=none ctermbg=none
hi NonText ctermfg=none ctermbg=none

set number
set laststatus=2
set ttimeoutlen=50
set backspace=indent,eol,start

let g:vim_markdown_folding_disabled=1
let g:airline#extensions#tabline#enabled = 1
