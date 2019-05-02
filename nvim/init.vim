
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('HerringtonDarkholme/yats.vim')
  call dein#add('mhartington/nvim-typescript', {'build': './install.sh'})
  call dein#add('w0rp/ale')
  call dein#add('autozimu/LanguageClient-neovim',
			  \{'rev': 'next',
			   \ 'build': 'bash install.sh',
  			\})
  call dein#add('OmniSharp/omnisharp-vim')
  call dein#local('~/Github', {}, ['nvim-typescript'])
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('vim-airline/vim-airline')
  let $NVIM_NODE_LOG_FILE='~/nvim-node.log'
  let $NVIM_NODE_LOG_LEVEL='warn'
" For async completion
" For Denite features
  call dein#add('Shougo/denite.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

source $HOME/.config/nvim/general.vim
source $HOME/.config/nvim/keybindings.vim
source $HOME/.config/nvim/plugins.vim

