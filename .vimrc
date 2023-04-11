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
" NerdTree Plugin "
Plug 'preservim/nerdtree'
call plug#end()

colorscheme wal

" ------------KEYBINDS------------- "
" Ctrl-p to use compile script"
map <C-p> :!compile % <CR>
" Ctrl + z to open pdf, mainly for latex documents"
map <C-z> :! zathura --fork %:t:r.pdf<CR><CR>

" use Ctrl-h or Ctrl-l to move left and right between vim splits "
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k


" Insert mode maps "
inoremap jj <Esc>

" Normal mode maps "
nnoremap cw ciw
nnoremap dw diw
nnoremap yw yiw
nnoremap <S-j> 3j
nnoremap <S-k> 3k
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

" NERDTree remaps "
nnoremap <C-n> :NERDTreeToggle<CR>

" Exit Vim if NERDTree is the only window remaining in the only tab. "
" Close the tab if NERDTree is the only window remaining in it. "
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif"
