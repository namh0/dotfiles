" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif


if !exists('g:vscode')
  call plug#begin('~/.vim/plugged')

    " Themes
  Plug 'dracula/vim', { 'as': 'dracula' }
  " Plug 'arcticicestudio/nord-vim'
  Plug 'lifepillar/vim-solarized8'

  " Lightline Themes
  Plug 'itchyny/lightline.vim'

  " Indent
  Plug 'nathanaelkane/vim-indent-guides'

  " Language/Syntax
  Plug 'rust-lang/rust.vim'
  Plug 'vim-python/python-syntax'
  Plug 'psf/black', { 'branch': 'stable' }
  Plug 'Vimjas/vim-python-pep8-indent'
  Plug 'Glench/Vim-Jinja2-Syntax'
  Plug 'cespare/vim-toml'
  " Plug 'fatih/vim-go'
  Plug 'plasticboy/vim-markdown'
  Plug 'hashivim/vim-terraform'
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
  source ~/.config/nvim/syntax/rust.vim
  source ~/.config/nvim/syntax/coc.vim
  source ~/.config/nvim/syntax/python.vim
  source ~/.config/nvim/syntax/markdown.vim
  source ~/.config/nvim/syntax/hashicorp.vim

  " Theme
  source ~/.config/nvim/theme/colors.vim
  source ~/.config/nvim/theme/indent.vim

  " Misc
  set number
  set laststatus=2
  " set mouse=a

  " let g:netrw_dirhistmax=0

endif

" Keymap
source ~/.config/nvim/keymap/keymap.vim

set clipboard=unnamedplus
set nocompatible
set nofoldenable
