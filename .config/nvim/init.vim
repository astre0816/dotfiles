augroup UserAutoCmd
    autocmd!
augroup END

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall -- sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')
"color scheme
Plug 'dracula/vim', {'as': 'dracula'}
"git operation in vim
Plug 'tpope/vim-fugitive'
"git difference marker
Plug 'airblade/vim-gitgutter'
"custom status line
Plug 'itchyny/lightline.vim'
"buffer explorer
Plug 'jlanzarotta/bufexplorer'
"LSP Client
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
