syntax enable
filetype plugin indent on

" Default indentation
set ts=2 sw=2 expandtab breakindent

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Rainbow brackets
let g:rainbow_active = 1
