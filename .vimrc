" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2019 Dec 17
"
" To use it, copy it to
"	       for Unix:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"	 for MS-Windows:  $VIM\_vimrc
"	      for Haiku:  ~/config/settings/vim/vimrc
"	    for OpenVMS:  sys$login:.vimrc

set nocompatible              " be iMproved, required
filetype off                  " required

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()

" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

"Plugin 'rust-lang/rust.vim'
"Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required

" Gruvbox8 colorscheme
"let g:gruvbox_transp_bg=1
"set background=dark    " Setting dark mode
"autocmd vimenter * colorscheme gruvbox8

" Config lightline.vim
set laststatus=2
set noshowmode
let g:lightline = {
	\ 'colorscheme': 'ayu_dark',
	\ }


" When started as "evim", evim.vim will already have done these settings, bail
" out.
if v:progname =~? "evim"
  finish
endif

" Get the defaults that most users want.
source $VIMRUNTIME/defaults.vim

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file (restore to previous version)
  if has('persistent_undo')
    set undofile	" keep an undo file (undo changes after closing)
  endif
endif

if &t_Co > 2 || has("gui_running")
  " Switch on highlighting the last used search pattern.
  set hlsearch
endif

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78
augroup END

" show line numbers
set number
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

" set tabs and indent
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4


" Add optional packages.
"
" The matchit plugin makes the % command work better, but it is not backwards
" compatible.
" The ! means the package won't be loaded right away but when plugins are
" loaded during initialization.
if has('syntax') && has('eval')
  packadd! matchit
endif


" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
"call plug#begin('~/.vim/plugged')

"Plug 'ap/vim-css-color'

" Initialize plugin system
"call plug#end()
