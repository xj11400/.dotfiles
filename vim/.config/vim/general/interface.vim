"
" interface
" ============================================================

" cursor and move
" ---------------

" set line number
set number

" set relative line number
set relativenumber

" automatic toggling between line number mode
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" wrap
set wrap

" show cursor row
set cursorline

" show cursor column
set cursorcolumn

" config which wrap
" s,b,<,>,h,l,[,]
set whichwrap=s,b,<,>,[,]

" configure backspace so it acts as it should act
set backspace=eol,start,indent

" search
" ------

" highlight search results
set hlsearch

" ignore case when searching
set ignorecase

" when searching try to be smart about cases
set smartcase

" makes search act like search in modern browsers
set incsearch

" for regular expressions turn magic on
set magic

" show matching brackets when text indicator is over them
set showmatch

" how many tenths of a second to blink when matching brackets
set mat=2

" scoll window
" ------------

" add a bit extra margin to the left
"set foldcolumn=1

" rollover occurs when the distance between the cursor and the upper or lower end of the window
set scrolloff=1

" scroll line when the cursor reaches the upper or lower end of the window
set scrolljump=5

" scroll line when using C-u C-d
"set scroll=10

" wild menu
" ---------

" turn on the Wild menu
set wildmenu

" command mode completion
set wildmode=list:longest,full

" ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endi

" split window
" ------------
set splitright
set splitbelow

" view
" -----

" show current mode
set showmode

" show special symbols
"set list
"set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" don't redraw while executing macros (good performance config)
set lazyredraw

" a buffer becomes hidden when it is abandoned
set hidden

" no annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

if has('cmdline_info')
    " show command
    set showcmd

    " show ruler
    set ruler
    set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) "
endif

if has('statusline')
    set laststatus=2
    set statusline=%<%f\                     " Filename
    set statusline+=%w%h%m%r                 " Options
    "set statusline+=\ [%{&ff}/%Y]            " Filetype
    "set statusline+=\ [%{getcwd()}]          " Current dir
    set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif
