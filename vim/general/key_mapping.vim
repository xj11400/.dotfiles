"
" key mapping
" ============================================================ 

" save and reload current file
" (for setting config)
map <localleader>r :w<CR>:source %:p<CR>

" file
" ----
map <localleader>q :q<CR>
map <localleader>Q :qa<CR>
map <localleader>n :enew<CR>

" visual mode related
" -------------------

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" command line mode
cnoremap <C-a> <Home>
cnoremap <C-e> <End>
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" system clipboard
nmap <leader>y "+y
nmap <leader>p "+p
vmap <leader>y "+y
vmap <leader>p "+p

" visual-search
vmap * y/<C-R>"<CR>
vmap # y?<C-R>"<CR>

" no heighlight
nmap <C-l> :noh<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" instert mode hjkl
" <Left>
" <Down>
" <Up>
" <Right>
imap <C-b> <C-o>h
imap <C-n> <C-o>j
imap <C-p> <C-o>k
imap <C-f> <C-o>l

" insert mode
imap <C-h> <BS>
imap <C-d> <Del>
imap <C-j> <CR>

imap <M-f> <C-o>w
imap <M-b> <C-o>b

imap <C-a> <Home>
imap <C-e> <End>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" alternative mapping for paste
" -----------------------------
xnoremap <silent> p p:let @"=@0<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" test area
"
" when lines spanning multiple display lines, navigate through them with gj not j
" (i.e. according to displayed lines, not physical lines).
" nmap j gj
" nmap k gk
"
" nnoremap <silent> J :bp<CR>
" nnoremap <silent> K :bn<CR>
" noremap <silent><space> :set hls! hls?<CR>
" noremap <silent><Leader>s :set rnu! rnu?<CR>
" noremap <silent><Leader>l :set list! list?<CR>
" nnoremap <Leader>c @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>
" " Tab操作
" nnoremap <Leader>tc :tabc<CR>
" nnoremap <Leader>tn :tabn<CR>
" nnoremap <Leader>tp :tabp<CR>
" nnoremap <Leader>te :tabe<Space>
" 
" " 修正易錯命令
" command -bang -nargs=* Q q<bang>
" command -bang -nargs=* Wa wa<bang>
" command -bang -nargs=* WA wa<bang>
" command -bang -nargs=* -complete=file W w<bang> <args>
" command -bang -nargs=* -complete=file Wq wq<bang> <args>
" command -bang -nargs=* -complete=file WQ wq<bang> <args>
" 
