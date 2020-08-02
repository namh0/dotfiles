source ~/.config/nvim/plugs/plugins.vim

" Language
source ~/.config/nvim/syntax/misc.vim
source ~/.config/nvim/syntax/javascript.vim
source ~/.config/nvim/syntax/python.vim
source ~/.config/nvim/syntax/go.vim
source ~/.config/nvim/syntax/ruby.vim
source ~/.config/nvim/syntax/markdown.vim
source ~/.config/nvim/syntax/hashicorp.vim

" Theme
source ~/.config/nvim/theme/colors.vim

" Keymap
source ~/.config/nvim/keymap/keymap.vim

" Misc
set number
set laststatus=2
" set mouse=a
set nocompatible
set clipboard=unnamedplus

let g:netrw_dirhistmax=0

" COC
source ~/.config/nvim/plugs/coc.vim
