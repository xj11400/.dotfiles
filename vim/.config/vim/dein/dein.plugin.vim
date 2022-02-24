"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

let s:dein_dir = '~/.local/share/vim/dein'

" Add the dein installation directory into runtimepath
"set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim
let &runtimepath = &runtimepath.','.s:dein_dir.'/repos/github.com/Shougo/dein.vim'

" set rc_dir and toml path
let g:rc_dir = expand('~/.config/vim/dein/rc/')
let s:toml = g:rc_dir . 'dein.toml'
let s:lazy_toml = g:rc_dir . 'dein_lazy.toml'

if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

    call dein#load_toml(s:toml, {'lazy':0})
    call dein#load_toml(s:lazy_toml, {'lazy':1})

    " install third-party plugins
    " call dein#add('tpope/vim-surround')
    "call dein#add('psliwka/vim-smoothie')
    call dein#add('mhinz/vim-startify')

  call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------
