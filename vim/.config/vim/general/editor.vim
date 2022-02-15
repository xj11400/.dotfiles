"
" editor
" ============================================================

" backup 
" ------

" backup file
" .filename~
set nobackup

" swap file
" .filename.swp
set noswapfile

" undo file
" .filename.un.~
set noundofile

" write backup
" make a backup before overwriting a file.
set nowritebackup


" tab
" --------------

" use spaces instead of tabs
set expandtab

" be smart when using tabs
" after setting smarttab, you can delete 4 spaces with just one click of Backspace
set smarttab

" 1 tab = 4 spaces
set shiftwidth=4
set tabstop=4

" indent
" ------

" auto indent
set autoindent

" smart indent
set smartindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" wrap line
" ----------

" 設置光標超過 80 列的時候折行。
"set tw=80

" 不在單詞中間斷行。設置了這個選項後，如果一行文字非常長，無法在一行內顯示完的話，它會在單詞與單詞間的空白處斷開，盡量不會把一個單詞分成兩截放在兩個不同的行裡。
"set lbr

" 打開斷行模塊對亞洲語言支持。m 表示允許在兩個漢字之間斷行，即使漢字之間沒有出現空格。B 表示將兩行合並為一行的時候，漢字與漢字之間不要補空格。該命令支持的更多的選項請參看用戶手冊。
"set fo+=mB

"
"set wrap


" folding
" -------

"set foldmethod=syntax " 選擇代碼折疊類型
"set foldlevel=100 " 禁止自動折疊
"
set foldenable " Enables folding.
" 折疊方法  
" manual    手工折疊  
" indent    使用縮進表示折疊  
" expr      使用表達式定義折疊  
" syntax    使用語法定義折疊  
" diff      對沒有更改的文本進行折疊  
" marker    使用標記進行折疊, 默認標記是 {{{ 和 }}} 
set foldmethod=manual " Set fold method to 'manual'.
""set fdc=0 " Show where folds start and end, when they are opened.
"nnoremap @=((foldclosed(line('.')) < 0 )? 'zc':'zo')

:set foldtext=MyFoldText()
:function MyFoldText()
:  let line = getline(v:foldstart)
:  let sub = substitute(line, '/\*\|\*/\|{{{\d\=', '', 'g')
:  return v:folddashes . sub
:endfunction


"黏貼不換行問題的解決方法"
set pastetoggle=<F9>


