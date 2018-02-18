" auto install of dein
let s:cache_home = empty($XDG_CHACHE_HOME) ? expand('~/.cache') : $XDG_CACHE_HOME
let s:dein_dir = s:cache_home . '/dein'
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
if !isdirectory(s:dein_repo_dir)
    call system('git clone https://github.com/Shougo/dein.vim ' . shellescape(s:dein_repo_dir))
endif
let &runtimepath = s:dein_repo_dir . "," . &runtimepath

" load plugins and create cache
let s:toml_dir = fnamemodify(expand('<sfile>'), ':h')
if dein#load_state(s:dein_dir)
    call dein#begin(s:dein_dir)
    call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})
    call dein#load_toml(s:toml_dir . '/dein-lazy.toml', {'lazy': 1})
    call dein#end()
endif

" install other plugins
if has('vim_starting') && dein#check_install()
    call dein#install()
endif

