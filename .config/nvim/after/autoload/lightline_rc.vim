function! lightline_rc#getLocalTime()
    return strftime("%Y/%m/%d %H:%M", localtime())
endfunction

function! lightline_rc#getCurrentDirectory()
    return fnamemodify(getcwd(), ':~')
endfunction

function! lightline_rc#getFilePathWithBranch()
    let branch = fugitive#head()
    if strlen(branch) > 0
        return expand('%') . ' (' . branch . ')'
    else
        return expand('%')
    endif
endfunction

function! lightline_rc#getTabName(tabNumber)
    return lightline_rc#getFilePathWithBranch()
endfunction

function! lightline_rc#updateTabline(timerId)
    set tabline=%!lightline#tabline()
endfunction
