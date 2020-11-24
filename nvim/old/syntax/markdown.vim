"Markdown Settings
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1

" Spell check settings
set spelllang=en
"set spellfile=$HOME/tests/en.utf-8.add
autocmd Filetype markdown setlocal spell
autocmd Filetype text setlocal spell
