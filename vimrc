highlight Search guibg='Purple' guifg='NONE'
autocmd BufWritePost .vimrc source %
syntax on
filetype plugin indent on
inoremap jk <ESC>
let mapleader = "\<Space>"
set number relativenumber

" Settings
autocmd vimenter * NERDTree
autocmd vimenter * wincmd p
set showcmd ic hls is
set scrolloff=5
:nnoremap <silent> <CR> :nohlsearch<bar>:echo<CR>
set tabstop=4
set shiftwidth=4

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'ervandew/supertab'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'https://github.com/tpope/vim-surround.git'
Plug 'https://github.com/scrooloose/nerdtree.git'
call plug#end()

" Key Rebinding
nmap <silent> <A-Left> <C-w>h
nmap <silent> <A-Right> <C-w>l
imap {<CR> {<CR><BS>}<Esc>ko
nnoremap : ;
nnoremap ; :
vnoremap . :norm.<CR>
nnoremap <leader>t :tabnext<CR>
nnoremap <leader>r :tabprevious<CR>

" Navigation
" inoremap <Space><Tab> <Esc>/<++><CR>"_c4l

