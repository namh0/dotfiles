" Indentation
autocmd FileType python     setlocal    ts=4 sw=4 expandtab

" Python Settings
let g:python_highlight_all = 1
let g:python_highlight_file_headers_as_comments = 1
autocmd BufWritePre *.py execute ':silent Black'
