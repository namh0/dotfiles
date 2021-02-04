function! NimFormat()
  :w
  :silent !nimpretty %
  :e
  :redraw!
endfunction
"autocmd BufWritePre *.nim call NimFormat()
"
"autocmd BufNewFile,BufRead *.nim set filetype=nim
"autocmd FileType nim call NimFormat()
