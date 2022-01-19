"
" general
" ------------------------------------------------------------

" set how many lines of history VIM has to remember
set history=500

" leader key
let mapleader = "\<Space>"

" local leader key
let maplocalleader = "\\"

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime
