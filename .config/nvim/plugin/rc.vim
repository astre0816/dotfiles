set encoding=utf-8
scriptencoding=utf-8


" character code -------------------------------
" auto setting character code
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp
" auto setting file format
set fileformats=unix,dos,mac
" show correctly double-byte character
set ambiwidth=double
" End character code ---------------------------


" buffer ---------------------------------------
" don't create swap file
set noswapfile
" don't create backup file
set nobackup
" auto load
set autoread
" can edit multi file
set hidden
" confirm when there are not saving files
set confirm
" End buffer -----------------------------------


" appearance -----------------------------------
" show title
set title
" show line number
set number
"set relativenumber
" show cursor position
set ruler
" set vertical offset
set scrolloff=8
" set horizontal offset
set sidescrolloff=16
" set time of showing matched brackets
set showmatch matchtime=1
" also show matched brackets when closed brackets
set nostartofline
" set height of pop up menu
set pumheight=10
" don't miss long line
set display=lastline
" always show tab line
set showtabline=2
" set identifier of invisible character
set list listchars=tab:▸\ ,eol:\ ,extends:»,precedes:«,nbsp:%
" do spell check
set spell spelllang=en,cjk
" set folding
set foldmethod=indent foldlevel=99 foldopen-=hor
" don't check folding with syntax when entering insert mode
augroup foldmethod-syntax
    autocmd!
    autocmd InsertEnter * if &l:foldmethod ==# 'syntax'
                \ | setlocal foldmethod=manual
                \ | endif
    autocmd InsertLeave * if &l:foldmethod ==# 'manual'
                \ | setlocal foldmethod=syntax
                \ | endif
augroup END
" set updatetime faster (default is 40000)
set updatetime=300
" always show signcolumns
set signcolumn=yes
" don't give |ins-completion-menu| messages
set shortmess+=c
" End appearance ------------------------------


" edit ----------------------------------------
" don't use octal
set nrformats-=octal
" use clip board
set clipboard+=unnamedplus
" delete space at end of line
autocmd BufWritePre * :%s/\s\+$//ge
" End edit ------------------------------------


" command line --------------------------------
" show mode
set showmode
" show inputting command
set showcmd
" always show status line
set laststatus=2
" set height of command line
set cmdheight=1
" use completion with TAB key in command line mode
set wildmenu wildmode=list:longest,full
" avoid printing '[2 q' in Neovim command line
set guicursor=
" End command line-----------------------------


" cursor --------------------------------------
" don't limit Backspace key
set backspace=indent,eol,start
" don't limit moving in rectangle visual mode
set virtualedit=block
" End cursor -----------------------------------


" indent --------------------------------------
" size of tab
set tabstop=4
" size of auto indent
set shiftwidth=4
" keep above line's indent
set autoindent smartindent
" expand tab to space
set expandtab
" End indent ----------------------------------


" search and replace --------------------------
" highlight searched words
set hlsearch
" don't distinguish uppercase or lowercase
set ignorecase
" if there's uppercase distinguish uppercase or lowercase
set smartcase
" return top of file if reach end of file
set wrapscan
" show count of search results [n/N]
set shortmess-=S
" End search and replace ----------------------

" sound ---------------------------------------
set belloff=all
" End sound -----------------------------------
