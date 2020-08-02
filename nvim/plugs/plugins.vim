"-" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Themes
Plug 'dracula/vim', { 'as': 'dracula' }

" Lightline Themes
Plug 'itchyny/lightline.vim'

" Language/Syntax
Plug 'pangloss/vim-javascript'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'Vimjas/vim-python-pep8-indent'
Plug 'vim-ruby/vim-ruby'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'
Plug 'hashivim/vim-terraform'
Plug 'hashicorp/sentinel.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Misc
Plug 'tpope/vim-surround'
Plug 'lambdalisue/suda.vim'
Plug 'luochen1990/rainbow'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()
