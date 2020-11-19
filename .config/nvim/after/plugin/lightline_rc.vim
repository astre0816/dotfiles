" read config from json file
let s:configfile = '$HOME/.vim/after/plugin/lightline_rc.json'
let s:configlines = readfile(expand(s:configfile))
let s:configstr = join(s:configlines)
let g:lightline = json_decode(s:configstr)


" show status bar
set laststatus=2

" hide --INSERT--
set noshowmode

" set timer
if !empty(globpath(&rtp, 'plugin/lightline.vim'))
    call timer_start(1000, 'lightline_rc#updateTabline', {'repeat': -1})
endif
