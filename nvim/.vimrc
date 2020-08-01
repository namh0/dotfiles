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

" Misc
Plug 'tpope/vim-surround'
Plug 'lambdalisue/suda.vim'
Plug 'luochen1990/rainbow'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()

" Colors / Themes
set termguicolors
syntax enable
set background=dark

" Dracula
colo dracula
let g:lightline = {'colorscheme': 'dracula'}
highlight Comment cterm=italic gui=italic

set number
set laststatus=2
" set mouse=a
set nocompatible
set clipboard=unnamedplus

nnoremap d "_d
nnoremap D "_D
vnoremap d "_d

" Spaces, Tabs
set ts=2 sw=2 expandtab breakindent
autocmd FileType python     setlocal    ts=4 sw=4 expandtab
autocmd Filetype go         setlocal    ts=4 sw=4 noexpandtab

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"let g:indentLine_leadingSpaceEnabled = 1 

"JSON Settings
let g:vim_json_syntax_conceal = 0

"Python Settings
let g:semshi#simplify_markup = v:false
let g:semshi#mark_selected_nodes = 0
let g:semshi#error_sign = v:false
let g:semshi#always_update_all_highlights = v:true
function MyCustomHighlights()
    hi semshiBuiltin      ctermfg=207 guifg=#8BE9FD
    hi semshiUnresolved   ctermfg=226 guifg=#FF5555 cterm=underline gui=underline
endfunction
autocmd FileType python call MyCustomHighlights()

" Ruby Settings
let ruby_operators = 1
let ruby_pseudo_operators = 1

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

"Terraform Settings
let g:terraform_fmt_on_save = 1

au BufRead,BufNewFile *.hcl set filetype=tf

nnoremap <C-S> :update<cr>
inoremap <C-S> <C-O>:update<cr>

let g:rainbow_active = 1

" Spell check settings
set spelllang=en
"set spellfile=$HOME/tests/en.utf-8.add
autocmd Filetype markdown setlocal spell
autocmd Filetype text setlocal spell

let g:netrw_dirhistmax=0
