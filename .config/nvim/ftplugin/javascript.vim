let b:ale_fixers = ['prettier', 'eslint']
let b:ale_fix_on_save = 1
let b:LanguageClient_serverCommands = {
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ }
