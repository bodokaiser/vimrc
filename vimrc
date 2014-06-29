set nocompatible

filetype off

set runtimepath+=~/.vim/bundle/vundle.vim/

call vundle#begin()

" core plugins
Bundle 'gmarik/vundle.vim'

" core language plugins
Bundle 'othree/html5.vim'
Bundle 'leshill/vim-json'
Bundle 'jnwhiteh/vim-golang'
Bundle 'digitaltoad/vim-jade'
Bundle 'plasticboy/vim-markdown'
Bundle 'jelera/vim-javascript-syntax'

" extended language plugins
Bundle 'skammer/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'

" color schemes
Bundle 'flazz/vim-colorschemes'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-colorscheme-switcher'

call vundle#end()

filetype plugin indent on

syntax on

colorscheme busierbee

hi Normal ctermfg=none ctermbg=none

set backspace=indent,eol,start
