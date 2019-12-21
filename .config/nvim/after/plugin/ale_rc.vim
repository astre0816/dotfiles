let g:ale_linters = {
    \   'java': ['javac'],
    \   'kotlin': ['kotlinc']
    \ }

let g:ale_lint_on_save = 1
let g:ale_lint_on_enter = 0
let g:ale_lint_on_text_change = 'never'

let g:ale_set_loclist = 0
let g:ale_set_quickfix = 1
let g:ale_open_list = 1

nmap <silent> [e <Plug>(ale_previous_wrap)
nmap <silent> ]e <Plug>(ale_next_wrap)