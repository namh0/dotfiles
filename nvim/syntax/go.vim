" Indentation
autocmd Filetype go         setlocal    ts=4 sw=4 noexpandtab
" Go Settings
let g:go_highlight_build_constraints = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_function_calls = 1
let g:go_highlight_operators = 1
let g:go_highlight_structs = 1
let g:go_highlight_types = 1
let g:go_template_autocreate = 0
let g:go_fmt_command = "goimports"
let g:go_null_module_warning = 0
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
au BufRead,BufNewFile *.gohtml set filetype=gohtmltmpl
au BufRead,BufNewFile *.tmpl set filetype=gotexttmpl
