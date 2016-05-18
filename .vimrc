hi Type cterm=bold ctermfg=white
hi Comment cterm=bold
set number

call plug#begin('~/.vim/plugged')

Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'Shougo/neocomplete.vim'
Plug 'majutsushi/tagbar'

let g:neocomplete#enable_at_startup = 1

hi Type cterm=bold ctermfg=white

call plug#end()

hi Type cterm=bold ctermfg=white
hi Comment cterm=bold
