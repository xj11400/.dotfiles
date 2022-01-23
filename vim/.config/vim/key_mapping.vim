"
" key mapping
" --------------------------------------------------------

" save and reload current file
" (for setting config)
map <localleader>r :w<CR>:source %:p<CR>

" visual mode related
" -------------------

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" instert mode hjkl
" <C-S> hjkl
imap <C-S-h> <C-o>h
imap <C-S-j> <C-o>j
imap <C-S-k> <C-o>k
imap <C-S-l> <C-o>l

" system clipboard
nmap <leader>y "+y
nmap <leader>p "+p
vmap <leader>y "+y
vmap <leader>p "+p

"
" test area

"imap <C-h> <BS>
imap <C-d> <Del>


