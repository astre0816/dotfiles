let g:lightline = {}
let g:lightline.colorscheme = 'dracula'

let g:lightline.tabline = {}
let g:lightline.tabline.left = [['bufnum', 'tabs']]
let g:lightline.tabline.right = [[], ['time'], ['cd']]

let g:lightline.tab = {}
let g:lightline.tab.inactive = []
let g:lightline.tab.active = ['tabname']

let g:lightline.component_function = {
            \    'cd': 'lightline_rc#getCurentDirectory',
            \    'time': 'lightline_rc#getLocalTime'
            \ }

let g:lightline.tab_component_function = {
            \    'tabname': 'lightline_rc#getTabName'
            \ }


" show status bar
set laststatus=2

" hide --INSERT--
set noshowmode

" set timer
if !empty(globpath(&rtp, 'plugin/lightline.vim'))
    call timer_start(1000, 'lightline_rc#updateTabline', {'repeat': -1})
endif
