set number
set showcmd
set cursorline
set showmatch
set wildmenu


if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('autozimu/LanguageClient-neovim', {
  	\ 'rev': 'next',
	\ 'build': 'bash install.sh',
  	\ })
  call dein#add('ambv/black')
  call dein#add('w0rp/ale')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
let g:deoplete#enable_at_startup = 1
let g:python3_host_prog = $HOME.'/.virtualenvs/neovim3/bin/python3'
let g:LanguageClient_serverCommands = {
	\ 'python': ['pyls', '-v'],
	\}
filetype plugin indent on
syntax enable

set tags=tags
let g:airline_theme='luna'

highlight ALEWarning cterm=underline ctermbg=NONE ctermfg=Yellow
highlight ALEError cterm=underline ctermbg=NONE ctermfg=Red
