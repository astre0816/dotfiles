set encoding=utf-8
scriptencoding=utf-8


" dein Scripts-----------------------------
let s:dein_dir=expand('~/.vim/dein')
let s:dein_repo_dir=s:dein_dir . '/repos/github.com/Shougo/dein.vim'

if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
execute 'set runtimepath^=' . s:dein_repo_dir

" Required:
call dein#begin(s:dein_dir)

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('w0rp/ale') "構文チェック
call dein#add('airblade/vim-gitgutter') "git差分マーカー
call dein#add('tyru/caw.vim.git') "コメントアウトトグル
call dein#add('itchyny/lightline.vim') "ステータスラインカスタマイズ
call dein#add('carlson-erik/wolfpack') "カラースキーマ
call dein#add('miyakogi/seiya.vim') "背景透過

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()
call dein#save_state()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
"End dein Scripts-------------------------



"文字コード---------------------------------------------------
"文字コードをutf-8に設定
"set encoding=utf-8 このファイルの先頭ですでに記載
"文字コード自動判別
set fileencodings=utf-8,sjis,iso-2022-jp,euc-jp
"改行コード自動判別
set fileformats=unix,dos,mac
"一部の全角文字が重なるを防ぐ
set ambiwidth=double
"-------------------------------------------------------------


"バッファ-----------------------------------------------------
"バックアップファイルを作らない
set nobackup
"スワップファイルを作らない
set noswapfile
"編集中のファイルが変更されたら自動で読み直す
set autoread
"バッファが編集中でもファイルを開けるようにする
set hidden
"未保存のファイルがあるときは終了前に保存確認
set confirm
"-------------------------------------------------------------


"見た目-------------------------------------------------------
"ターミナルのタイトルをセットする
set title
"行番号を表示
set number
"カーソルの現在位置を表示
set ruler
"上下8行の視界を確保
set scrolloff=8
"左右スクロール時の視界を確保
set sidescrolloff=16
"左右スクロールは1文字ずつ行う
"set sidescroll=1
"対応する括弧を0.1秒表示
set showmatch matchtime=1
"括弧を閉じたときにも対応する括弧を表示
set nostartofline
"画面端で折り返さない
set nowrap
"ポップアップメニューの高さを指定
set pumheight=10
"長い行でも省略されずに表示
set display=lastline
"タブラインを常に表示
set showtabline=2
"不可視文字の表示
set list listchars=tab:▸\ ,eol:\ ,extends:»,precedes:«,nbsp:%
"81桁目に色を付ける
set colorcolumn=81
"折りたたみ設定
set foldmethod=indent foldlevel=99
"水平移動したときに折りたたみを自動で開かない
set foldopen-=hor
"javaファイルの場合はfoldmethodをsyntaxとし、クラス内のメソッド等を閉じる
autocmd FileType java setl foldmethod=syntax foldlevel=1
"foldmethod=syntaxのとき、インサートモード時には折りたたみの再計算を行わない
augroup foldmethod-syntax
	autocmd!
	autocmd InsertEnter * if &l:foldmethod ==# 'syntax'
				\ | setlocal foldmethod=manual
				\ | endif
	autocmd InsertLeave * if &l:foldmethod ==# 'manual'
				\ | setlocal foldmethod=syntax
				\ | endif
augroup END
"-------------------------------------------------------------


"編集---------------------------------------------------------
"0で始まる数字を8進数として扱わないようにする
set nrformats-=octal
"ヤンクでクリップボードにコピー
set clipboard=unnamed,autoselect
":makeコマンドと:nextコマンドを実行したときに自動保存
set autowrite
"行末の空白を削除
autocmd BufWritePre * :%s/\s\+$//ge
"-------------------------------------------------------------


"コマンドライン-----------------------------------------------
"モードを表示
set showmode
"入力中のコマンドをステータスに表示する
set showcmd
"ステータス行を常に表示
set laststatus=2
"ステータス行の項目を指定
"set statusline=%F%m%r%h%w\ \%=[%Y]\[%{&fileencoding}:%{&ff}\][%l/%L.%c]
"コマンドラインの高さ
set cmdheight=1
"コマンドラインモードでTABキーによるファイル名補完を有効にする
set wildmenu wildmode=list:longest,full
"-------------------------------------------------------------


"カーソル移動-------------------------------------------------
"Backspaceキーの影響範囲に制限を設けない
set backspace=indent,eol,start
"矩形選択時に文字のないところへカーソル移動できるようにする
set virtualedit=block
"-------------------------------------------------------------


"インデント---------------------------------------------------
"画面上でタブ文字が占める幅
set tabstop=4
"自動インデントでずれる幅
set shiftwidth=4
"改行時に前の行のインデントを継続
set autoindent
"改行時に入力された行の末尾に合わせて次の行のインデントを指定
set smartindent
"ペースト時のインデントのずれを防ぐ
"set paste
"-------------------------------------------------------------


"検索・置換---------------------------------------------------
"検索文字をハイライトする
set hlsearch
"インクリメンタルサーチを行う
"set incsearch
"大文字と小文字を区別しない
set ignorecase
"大文字があれば大文字と小文字を区別して検索する
set smartcase
"最後まで検索したら先頭に戻る
set wrapscan
"-------------------------------------------------------------


"カラースキーム-----------------------------------------------
"シンタックスハイライト
syntax on
"256色
set t_Co=256
"背景は黒系
set background=dark
"不可視文字の背景を全体の背景と同じ色に
autocmd ColorScheme * highlight SpecialKey ctermbg=none
"コメントの色を変更
autocmd ColorScheme * highlight Comment ctermfg=62
"検索結果の色を変更
autocmd ColorScheme * highlight Search ctermfg=235 ctermbg=116
"折りたたまれた行の色を変更
autocmd ColorScheme * highlight Folded ctermfg=86
"カラースキーム設定
colorscheme wolfpack
"-------------------------------------------------------------


"キーマッピング-----------------------------------------------
"ノーマルモード---------------------------------------------
"Yで行末までヤンク
nnoremap Y y$
"<S-h>で行頭に移動
nnoremap <S-h> ^
"<S-l>で行末に移動
nnoremap <S-l> $
"-----------------------------------------------------------
"-------------------------------------------------------------


"プラグイン設定-----------------------------------------------
"Seiya.vim--------------------------------------------------
"カラースキームの背景色を無効化
let g:seiya_auto_enable=1
"-----------------------------------------------------------

"lightline.vim----------------------------------------------
let g:lightline = { 'colorscheme' : 'wombat' }
"-----------------------------------------------------------

"NERDTree---------------------------------------------------
"NERDTreeに隠しファイルを表示
let g:NERDTreeShowHidden = 1
"-----------------------------------------------------------

"caw.vim----------------------------------------------------
"行のタブを除く最初の文字の前にコメント文字をトグル
nmap <C-_><C-_> <Plug>(caw:hatpos:toggle)
vmap <C-_><C-_> <Plug>(caw:hatpos:toggle)
"行頭にコメントをトグル
nmap <C-_>h <Plug>(caw:zeropos:toggle)
vmap <C-_>h <Plug>(caw:zeropos:toggle)
"-----------------------------------------------------------

"ale--------------------------------------------------------
"シンボルを変更する
let g:ale_sign_error = '!!'
let g:ale_sign_warning = '=='
"シンボルのハイライトを変更する
" autocmd ColorScheme * highlight ALEErrorSign ctermfg=WHITE
" autocmd ColorScheme * highlight ALEWarningSign ctermfg=WHITE
"ファイル保存時のみチェックする
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
let g:ale_lint_on_enter = 0
"エラー間の移動を定義
nmap <C-k> <Plug>(ale_previous_wrap)
nmap <C-j> <Plug>(ale_next_wrap)
"-----------------------------------------------------------
"-------------------------------------------------------------
