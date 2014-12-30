set nocompatible

filetype off

set runtimepath+=~/.vim/bundle/vundle.vim/

call vundle#begin()

" core
Plugin 'gmarik/vundle.vim'

" workflow
Plugin 'kien/ctrlp.vim'
Plugin 'townk/vim-autoclose'
Plugin 'scrooloose/syntastic'
Plugin 'yggdroot/indentline'

" language
Plugin 'othree/html5.vim'
Plugin 'fatih/vim-go'
Plugin 'leshill/vim-json'
Plugin 'vim-ruby/vim-ruby'
Plugin 'digitaltoad/vim-jade'
Plugin 'plasticboy/vim-markdown'
Plugin 'ap/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'julialang/julia-vim'

" interface
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'scrooloose/nerdtree'

" colorschemes
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-colorscheme-switcher'

call vundle#end()

" go plugin settings
let g:go_bin_path = expand("~/bin")
let g:go_fmt_command = "goimports"
let g:go_play_open_browser=1
let g:go_highlight_methods=1
let g:go_highlight_operators=1
let g:go_highlight_functions=1

" dont check syntax on exit - takes too much time
let g:syntastic_check_on_wq=0
let g:syntastic_enable_signs=1
let g:syntastic_java_checkers=[]

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
set textwidth=120
set colorcolumn=120

" this is for airline
set laststatus=2
set ttimeoutlen=50

" threat backspace as backspace
set backspace=indent,eol,start

" use real tabs for these languages
autocmd FileType go,make
			\ setlocal noexpandtab

" use two spaces for these languages
autocmd FileType ruby,html,json,jade,javascript
			\ setlocal tabstop=2 |
			\ setlocal shiftwidth=2

" use four spaces for these languages
autocmd FileType css
			\ setlocal tabstop=4 |
			\ setlocal shiftwidth=4

" restore last cursor position when reopening file
autocmd BufReadPost *
           \ if line("'\"") > 0 && line("'\"") <= line("$") |
           \ exe "normal g'\"" |
           \ endif

autocmd BufRead,BufNewFile *.html.*
            \ setlocal filetype=html
