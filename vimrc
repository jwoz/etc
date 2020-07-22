set number
set hidden
set history=200

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=140 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

"" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

set encoding=utf-8

autocmd BufWritePre * :%s/\s\+$//e

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'itchyny/lightline.vim'
Plug 'Valloric/YouCompleteMe'

call plug#end()

" lightline
set laststatus=2
" youcompleteme
let g:ycm_python_binary_path = '/usr/bin/python3'
