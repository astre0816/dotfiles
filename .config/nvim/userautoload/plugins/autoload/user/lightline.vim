function! user#lightline#init()
    let g:lightline = {}
    let g:lightline.colorscheme = 'Dracula'

    let g:lightline.tabline = {}
    let g:lightline.tabline.left = [['bufnum', 'tabs']]
    let g:lightline.tabline.right = [[], ['time'], ['cd']]

    let g:lightline.tab = {}
    let g:lightline.tab.inactive = []
    let g:lightline.tab.active = ['tabname']

    let g:lightline.component_function = {
                \    'cd': 'user#lightline#cd',
                \    'time': 'user#lightline#time'
                \ }

    let g:lightline.tab_component_function = {
                \    'tabname': 'user#lightline#tabname'
                \ }


    " show status bar
    set laststatus=2

    " hide --INSERT--
    set noshowmode

    " set timer
    call timer_start(1000, 'user#lightline#update_tabline', {'repeat': -1})
endfunction


function! user#lightline#tabname(n)
    let branch = fugitive#head()
    if strlen(branch) > 0
        return expand('%') . ' (' . branch . ')'
    else
        return expand('%')
endfunction


function! user#lightline#cd()
    return fnamemodify(getcwd(), ':~')
endfunction

function! user#lightline#time()
    return strftime("%Y/%m/%d %H:%M", localtime())
    " return strftime("%Y/%m/%d %T", localtime())
endfunction

function! user#lightline#update_tabline(timerId)
    set tabline=%!lightline#tabline()
endfunction
