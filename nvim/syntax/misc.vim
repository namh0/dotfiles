" Spaces, Tabs
set ts=2 sw=2 expandtab breakindent
autocmd FileType python     setlocal    ts=4 sw=4 expandtab
autocmd Filetype go         setlocal    ts=4 sw=4 noexpandtab

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Rainbow brackets
let g:rainbow_active = 1
