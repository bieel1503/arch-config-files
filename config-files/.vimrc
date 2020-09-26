set hlsearch
set shiftwidth=4
set tabstop=4
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'joshdick/onedark.vim'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

set termguicolors                    " Enable GUI colors for the terminal to get truecolor
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum" "for st colors
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

syntax on
colorscheme onedark
"For the statusline
set noshowmode
set laststatus=2
set shortmess+=F

"For ycm
set completeopt=popup
let g:ycm_autoclose_preview_window_after_completion = 1

"Some keybinds
"Delete, save and quit with Ctrl+d, Ctrl+s and Ctrl+w
inoremap <C-d> <Esc>:d _<Esc>i
nnoremap <C-d> <Esc>:d _<Esc>
inoremap <C-s> <Esc>:w<Esc>i
nnoremap <C-s> <Esc>:w<Esc>
nnoremap <C-w> <Esc>:q<Esc>
inoremap <C-w> <Esc>:q<Esc>
"Undo and redo with Shift+v, Ctrl+z and Ctrl+b
inoremap <C-z> <Esc>:undo<Esc>i
inoremap <C-b> <Esc>:redo<Esc>i
nnoremap <C-z> <Esc>:undo<Esc>
nnoremap <C-b> <Esc>:redo<Esc>
"Move between tabs with Ctrl+j and k
inoremap <C-j> <Esc>:tabp<Esc>i
nnoremap <C-j> <Esc>:tabp<Esc>
inoremap <C-k> <Esc>:tabn<Esc>i
nnoremap <C-k> <Esc>:tabn<Esc>
