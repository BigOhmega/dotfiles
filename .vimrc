" General settings "
set nocompatible
set tabstop=4
set hlsearch
set incsearch
set number relativenumber
syntax on

" PlugIns"
call plug#begin('~/.vim/plugged')
" Pywal Plugin"
Plug 'dylanaraps/wal.vim'
" Emmet Plugin"
Plug 'mattn/emmet-vim'
call plug#end()

colorscheme wal

" ------------KEYBINDS------------- "
" Ctrl-p to use compile script"
map <C-p> :!compile % <CR>
" Ctrl + d to open pdf, mainly for latex documents"
map <C-d> :! zathura --fork %:t:r.pdf<CR><CR>

" Insert mode maps "
inoremap jj <Esc>

" Normal mode maps "
nnoremap cw ciw
nnoremap dw diw
nnoremap yw yiw
nnoremap <C-j> 3j
nnoremap <C-k> 3k
" press alt+j or alt+k to move a line up and down through the file "
nnoremap <Esc>j :m .+1<CR>
nnoremap <Esc>k :m .-2<CR>

" Visual mode maps "
vnoremap <C-j> 3j
vnoremap <C-k> 3k
" press alt+j or alt+k to move highlighted lines in visual mode up and dowm
" through the file"
vnoremap <Esc>j :m '>+1<CR>gvgv
vnoremap <Esc>k :m '<-2<CR>gvgv

" Emmet shortcuts (HTML plug in that makes HTML coding in vim easier)"
let g:user_emmet_mode='ni'      "emmet functions avaliable in normal and insert mode"
let g:user_emmet_leader_key=',' "press comma key twice to use emmet functions"
