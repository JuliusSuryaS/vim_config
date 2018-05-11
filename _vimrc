set nocompatible
filetype off

"=================================
" Vundle config
"=================================
"Run time path to include Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Plugin goes here
" ----------------
Plugin 'itchyny/lightline.vim'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'
" ----------------
" Until here

call vundle#end()
filetype plugin indent on
"=================================


"=================================
" GUI config
"=================================
set noeb vb t_vb=
au GUIEnter * set vb t_vb=
set guioptions-=T "remove toolbar
set nu "set number on ('set rnu' -> relative number)
set gfn=Hack:h10:cANSI:qDRAFT "set font
set lines=50 "set height
set columns=90 "set width
colorscheme onehalfdark "set theme
syntax on
set laststatus=2 "for status line

"Not showing what mode currently is
"(replaced with lightline)
set noshowmode

" Remap config
nnoremap ; :
nnoremap y$ Y

" Add trailing white space and tab
set listchars=tab:~-,nbsp:_,trail:`
set list
"=================================

"=================================
" Backup file config
"=================================
set backupdir=C:/vim_tmp,.
set directory=C:/vim_tmp,.
set undodir=C:/vim_tmp,.
"=================================


" Lightline config
let g:lightline = {
			\'colorscheme':'jellybeans',
			\}
