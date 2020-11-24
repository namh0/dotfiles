if !exists('g:vscode')
  call plug#begin('~/.vim/plugged')

    " Themes
  Plug 'dracula/vim', { 'as': 'dracula' }

  " Lightline Themes
  Plug 'itchyny/lightline.vim'

  " Language/Syntax
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

  " Misc
  set number
  set laststatus=2
  " set mouse=a
    
  " let g:netrw_dirhistmax=0

  " COC
  source ~/.config/nvim/syntax/coc.vim
endif



