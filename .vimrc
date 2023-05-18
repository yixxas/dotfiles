" Vim config
syntax on
" Use new regular expression engine
set re=0
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set number
set ruler
set hidden
set autoindent
"
inoremap jj <Esc>
inoremap kk <Esc>

autocmd Filetype python nnoremap <buffer> <Space><Space> :w<CR>:exec '!clear;python3.9' shellescape(@%, 1)<CR>
autocmd Filetype cpp nnoremap <buffer> <Space><Space> :w<CR>:exec '!clear;g++ -std=c++17 '.shellescape('%').' -o '.shellescape('%:r').' && ./'.shellescape('%:r')<CR>
nnoremap <Space>c :%w !pbcopy<CR>
nnoremap mj <C-f>
nnoremap mk <C-b>

" Temp use java syntax for certora.spec files
au BufReadPost *.spec set syntax=java 

" Add cpp template
" I am terrible at regex
if !empty(glob('~/.vim/templates/skeleton.cpp'))
    autocmd BufNewFile *.cpp 0r ~/.vim/templates/skeleton.cpp
endif

if exists('*strftime')
    autocmd BufNewFile *.cpp :call append(0, '/**')
    autocmd BufNewFile *.cpp :call append(1, ' *    author:  yixxas')
    autocmd BufNewFile *.cpp :call append(2, ' *    created: '.strftime('%d.%m.%Y %T'))
    autocmd BufNewFile *.cpp :call append(3, '**/')
    autocmd BufNewFile lc*.cpp %delete
    if !empty(glob('~/.vim/templates/skeleton_lc.cpp'))
        autocmd BufNewFile lc*.cpp 0r ~/.vim/templates/skeleton_lc.cpp
    endif
endif

" To enable and sync alias with bashrc
let $BASH_ENV = "~/.bash_profile"
