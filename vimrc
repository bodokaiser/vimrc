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
Bundle 'pangloss/vim-javascript'
Bundle 'plasticboy/vim-markdown'

" extended language plugins
Bundle 'skammer/vim-css-color'
Bundle 'hail2u/vim-css3-syntax'

call vundle#end()

filetype plugin indent on
