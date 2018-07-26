highlight Search guibg='Purple' guifg='NONE'
syntax on
filetype plugin indent on
inoremap jk <ESC>
let mapleader = "\<Space>"
set number relativenumber

" Settings
set shell=bash\ --login
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

" File-specific settings"
autocmd BufWritePost .vimrc source %
autocmd BufWritePost .vimrc :!cd ~/Documents/Git/configs/ && git pull && git add . && git commit -m "Standard update" && git push 'https://Zach332:123shift@github.com/Zach332/zvimconfig.git'

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

" Other settings
autocmd Filetype java set makeprg=javac\ %
set errorformat=%A%f:%l:\ %m,%-Z%p^,%-C%.%#
nnoremap <F9> :make<Return>:copen<Return>
map <F10> :cprevious<Return>
map <F11> :cnext<Return>
