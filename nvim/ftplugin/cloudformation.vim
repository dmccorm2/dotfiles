set syntax=json
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
let b:ale_fix_on_save = 1
let b:ale_javascript_prettier_options = '--parser json'
let b:ale_fixers = ['prettier']
let b:ale_linters = ['jsonlint', 'cloudformation']
