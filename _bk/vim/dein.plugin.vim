if &compatible
    set nocompatible
endif

let s:dein_path = '~/.vim/dein'

" Add the dein installation directory into runtimepath
let &runtimepath = &runtimepath.','.s:dein_path.'/repos/github.com/Shougo/dein.vim'

if dein#load_state(s:dein_path)
  call dein#begin(s:dein_path)

  call dein#add(s:dein_path.'/repos/github.com/Shougo/dein.vim')

  " install third-party plugins
  " call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-surround')
  call dein#add('scrooloose/nerdtree')
  call dein#add('psliwka/vim-smoothie')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
