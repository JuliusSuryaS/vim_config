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
Plugin 'Yggdroot/indentLine'
Plugin 'flazz/vim-colorschemes'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'nathanaelkane/vim-indent-guides'
" ----------------
" Until here

call vundle#end()
filetype plugin indent on
"=================================
"=================================

" Encoding
" ========
set laststatus=2 "for status line
set encoding=utf-8

" Disable mode (insert/visual/block) status (replaced with lightline)
" =========================================
set noshowmode

" Remap config
" ============
nnoremap ; :
nnoremap y$ Y
nnoremap <F1> :call ToggleRNU()<CR> "toggle Relative number"

" Handle copy-paste into clipboard
" ===============================
set clipboard+=unnamed
set pastetoggle=<F2>


" Add trailing white space and tab
" ================================
set listchars=tab:>-,nbsp:_,trail:.
set list

" Indent and numbering
" ====================
set nu
set tabstop=4
" set expandtab "(tab to space)
set autoindent
set shiftwidth=4


"=================================

"=================================
" Backup file config
"=================================
set backupdir=C:/vim_tmp,.
set directory=C:/vim_tmp,.
set undodir=C:/vim_tmp,.
"=================================


"=================================
" Plugin cofig
"=================================

" Toogle nerdtree ctrl + n
map <C-n> :NERDTreeToggle<CR>

" Lightline config
let g:lightline = {
			\'colorscheme':'jellybeans',
			\}

" IndentLine
set conceallevel=1
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 1
let g:indentLine_bgcolor_term = 202
let g:indentLine_color_gui = '#FFFFFF'
"let g:indentLine_bgcolor_gui = 
let g:indentLine_char = '¦'
let g:indentLIne_enabled = 0

" FUNCTION
" ==================
let g:toggleRNU_is_off = 1 
function! ToggleRNU()
	if g:toggleRNU_is_off
		set rnu
		let g:toggleRNU_is_off = 0
	else
		set nornu
		let g:toggleRNU_is_off = 1
	endif
endfunction