"Python Settings
let g:python_highlight_all = 1
let g:python_highlight_file_headers_as_comments = 1
autocmd BufWritePre *.py execute ':Black'

"let g:semshi#simplify_markup = v:false
"let g:semshi#mark_selected_nodes = 0
"let g:semshi#error_sign = v:false
"let g:semshi#always_update_all_highlights = v:true
"function MyCustomHighlights()
"    hi semshiBuiltin      ctermfg=207 guifg=#8BE9FD
"    hi semshiUnresolved   ctermfg=226 guifg=#FF5555 cterm=underline gui=underline
"endfunction

" autocmd FileType python call MyCustomHighlights()

