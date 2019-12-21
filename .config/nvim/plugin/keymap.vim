" yank from current position to end of the line by Y
nnoremap Y y$

" move start of current line by <S-h>
nnoremap <S-h> ^
vnoremap <S-h> ^

" move end of current line by <S-l>
nnoremap <S-l> $
vnoremap <S-l> $

" move one line
nnoremap k gk
vnoremap k gk
nnoremap j gj
vnoremap j gj

" disable ZZ (close with saving)
nnoremap ZZ <Nop>

" disable ZQ (close without saving)
nnoremap ZQ <Nop>

" :E -> :e %:h/
command! E call feedkeys(":e " . expand("%:h") . "/\<C-d>")
