set hlsearch
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'ycm-core/YouCompleteMe'

call vundle#end()            " required
filetype plugin indent on    " required

packadd! onedark.vim
if (empty($TMUX))
  if (has("nvim"))
    "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
  endif
  "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
  "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
  " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  if (has("termguicolors"))
    set termguicolors
  endif
endif

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
"Move current line with Shift+Arrows
nnoremap <S-Up> <Esc>:m .-2<Esc>
nnoremap <S-Down> <Esc>:m .+1<Esc>
inoremap <S-Up> <Esc>:m .-2<Esc>i
inoremap <S-Down> <Esc>:m .+1<Esc>i
"Delete, save and quit with Ctrl+d, Ctrl+s and Ctrl+w
inoremap <C-d> <Esc>:d _<Esc>i
nnoremap <C-d> <Esc>:d _<Esc>
inoremap <C-s> <Esc>:w<Esc>
nnoremap <C-s> <Esc>:w<Esc>
nnoremap <C-w> <Esc>:q<Esc>
"Paste, undo and redo with Ctrl+p, Ctrl+z and Ctrl+b
inoremap <C-p> <Esc>p<Esc>i
inoremap <C-z> <Esc>:undo<Esc>i
inoremap <C-b> <Esc>:redo<Esc>i
nnoremap <C-z> <Esc>:undo<Esc>
nnoremap <C-b> <Esc>:redo<Esc>
