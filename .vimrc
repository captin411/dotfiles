syntax on

set encoding=utf-8

set runtimepath^=~/.vim/bundle/ctrlp.vim

set foldcolumn=4
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

autocmd FileType perl call VimOptionsPerl()
function! VimOptionsPerl()
    setlocal foldlevel=1
    setlocal shiftwidth=4
    setlocal tabstop=4
    setlocal expandtab
    :call tagbar#autoopen(0)
endfunction

autocmd FileType python call VimOptionsPython()
function! VimOptionsPython()
    setlocal foldmethod=indent
    setlocal foldlevel=0
    setlocal foldnestmax=1
    setlocal shiftwidth=4
    setlocal tabstop=4
    setlocal expandtab
    :call tagbar#autoopen(0)
endfunction

filetype indent plugin on

set ruler
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set laststatus=2
set mouse=a

if !has('gui_running')
    set t_Co=256
endif

let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ["perl","python","puppet","javascript"]
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"
let g:syntastic_loc_list_height = 3

augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

call pathogen#infect()
