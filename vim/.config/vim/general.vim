"
" general
" ------------------------------------------------------------

" auto reload $MYVIMRC
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" turn off vi compatible
" When opened, many features of vim will not be available.
" THe following commands are generally used to turn off vim's vi compatible mode
set nocompatible

" set how many lines of history VIM has to remember
set history=1000

" leader key
let mapleader = "\<Space>"

" local leader key
let maplocalleader = "\\"

" timeout
"set timeoutlen=350

" set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!


" enable filetype plugins
filetype plugin on
filetype indent on

" Use Unix as the standard file type
set ffs=unix,dos,mac

" encoding
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileencoding=utf-8
set encoding=utf-8
set ambiwidth=double
