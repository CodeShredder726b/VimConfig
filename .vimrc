" pathogen
execute pathogen#infect()

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-syntastic/syntastic'

call vundle#end()
filetype plugin indent on

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <C-n> :NERDTreeToggle<CR>

" fzf fuzzy finder
set rtp+=~/.fzf

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" indenting
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
syn on se title

set number

" search
set ignorecase
set hlsearch
set magic
set showmatch
set mat=2

" colours and fonts
syntax enable
try
	set termguicolors
	set background=light
	colorscheme colibri 
catch
endtry

set encoding=utf8
set ffs=unix,dos,mac

" turn of backup mode
set nobackup
set nowb
set noswapfile


