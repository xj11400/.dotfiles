"
" general
" ============================================================

" auto reload $MYVIMRC
autocmd BufWritePost $MYVIMRC source $MYVIMRC

" turn off vi compatible
" When opened, many features of vim will not be available.
" THe following commands are generally used to turn off vim's vi compatible mode
set nocompatible
if !has("nvim")
    set viminfo+=n~/.cache/vim/viminfo
endif

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
" set ambiwidth=double


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 關閉VIM的時候保存會話，按F122讀取會話
set sessionoptions=buffers,sesdir,help,tabpages,winsize
au VimLeave * mks! ~/.cache/vim/session.vim
nmap <F7> :so ~/.cache/vim/session.vim<CR>
