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

" go plugin settings
let g:go_bin_path = expand("~/bin")
let g:go_play_open_browser=0

" dont check syntax on exit - takes too much time
let g:syntastic_check_on_wq=0

" disable markdown folding
let g:vim_markdown_folding_disabled=1

" enable airline plugin
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#syntastic#enabled=1

filetype plugin on
filetype indent on

syntax on

colorscheme busierbee

" disable background color
hi Visual ctermfg=180 ctermbg=240
hi Folded ctermfg=066 ctermbg=none
hi Normal ctermfg=none ctermbg=none
hi NonText ctermfg=none ctermbg=none

" disable files
set nobackup
set noswapfile

" disable fill char
set fillchars=

" enable line numbers
set number

" indention
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent

" code width
set textwidth=80
set colorcolumn=80

" this is for airline
set laststatus=2
set ttimeoutlen=50

" threat backspace as backspace
set backspace=indent,eol,start

" use real tabs for these languages
autocmd FileType go,make,python
			\ set noexpandtab

" use two spaces for these languages
autocmd FileType html,json,javascript
			\ set tabstop=2 |
			\ set shiftwidth=2

" restore last cursor position when reopening file
autocmd BufReadPost *
            \ if line("'\"") > 0 && line("'\"") <= line("$") |
            \ exe "normal g'\"" |
            \ endif
