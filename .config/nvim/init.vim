augroup UserAutoCmd
    autocmd!
augroup END

let &runtimepath = fnamemodify(expand('<sfile>'), ':h')
        \ . '/userautoload/plugins' . ',' .  &runtimepath

runtime! userautoload/init/*.vim
runtime! userautoload/dein/*.vim
