"-" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Themes
Plug 'NLKNguyen/papercolor-theme'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'ayu-theme/ayu-vim'
Plug 'dracula/vim', { 'as': 'dracula' }

" Lightline Themes
Plug 'itchyny/lightline.vim'

Plug 'tpope/vim-eunuch'
Plug 'sheerun/vim-polyglot'
Plug 'fatih/vim-go'
Plug 'plasticboy/vim-markdown'
Plug 'tpope/vim-surround'

" Initialize plugin system
call plug#end()

" Colors / Themes
syntax enable
set background=dark

" Dracula
let g:dracula_italic = 0
let g:polyglot_disabled = ['yaml']
colo dracula

let g:lightline = {'colorscheme': 'dracula'}
set termguicolors

"highlight Comment cterm=italic gui=italic

set number
set laststatus=2
" set mouse=a
set nocompatible
set clipboard=unnamedplus

nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

" Spaces, Tabs
set ts=4 sw=4 expandtab breakindent
autocmd Filetype html       setlocal    ts=2 sw=2 expandtab
autocmd Filetype css        setlocal    ts=2 sw=2 expandtab
autocmd Filetype gohtmltmpl setlocal    ts=2 sw=2 expandtab
autocmd Filetype json       setlocal    ts=2 sw=2 expandtab
autocmd Filetype yaml       setlocal    ts=2 sw=2 expandtab
autocmd Filetype toml       setlocal    ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal    ts=2 sw=2 expandtab
autocmd Filetype ruby       setlocal    ts=2 sw=2 expandtab
autocmd Filetype markdown   setlocal    ts=2 sw=2 expandtab
autocmd Filetype go         setlocal    ts=4 sw=4 noexpandtab

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

let g:indentLine_leadingSpaceEnabled = 1 
let g:vim_json_syntax_conceal = 0

"Markdown Settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

"Go Settings
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

"Ruby settings
let ruby_operators        = 1

nnoremap <C-S> :update<cr>
inoremap <C-S> <C-O>:update<cr>

" Spell check settings
set spelllang=en
"set spellfile=$HOME/tests/en.utf-8.add
autocmd Filetype markdown setlocal spell
autocmd Filetype text setlocal spell

let g:netrw_dirhistmax=0
"For Konsole ¯\_(ツ)_/¯
"set guicursor=
