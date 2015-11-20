syntax on

set runtimepath^=~/.vim/bundle/ctrlp.vim

set textwidth=156
set backspace=indent,eol,start
set bg=dark
let g:solarized_termcolors=256
let g:solarized_contrast="high"
colorscheme solarized

set tabstop=4
set expandtab
set shiftwidth=4
set shiftround
set number

set matchpairs+=<:>

let perl_fold = 1
set foldlevel=1

filetype indent plugin on

set ruler

call pathogen#infect()
