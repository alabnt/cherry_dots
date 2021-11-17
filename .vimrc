syntax on
set noshowmode
set paste
set number
colorscheme 16bit
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
call plug#end()
set laststatus=2
let g:lightline = {
	      \ 'colorscheme': '16color',
      \ }
