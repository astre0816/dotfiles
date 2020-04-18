if !empty(globpath(&rtp, 'colors/dracula.vim'))
    set t_Co=256
    color dracula
    highlight Normal ctermbg=none
    highlight NonText ctermbg=none
    highlight LineNr ctermbg=none
    highlight Folded ctermbg=none
    highlight EndOfBuffer ctermbg=none
endif
