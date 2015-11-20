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
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set laststatus=2

set mouse=a

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ["perl","python","puppet","javascript"]
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

call pathogen#infect()
