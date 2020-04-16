"        ________ ++     ________
"       /VVVVVVVV\++++  /VVVVVVVV\
"       \VVVVVVVV/++++++\VVVVVVVV/
"        |VVVVVV|++++++++/VVVVV/'
"        |VVVVVV|++++++/VVVVV/'
"       +|VVVVVV|++++/VVVVV/'+
"     +++|VVVVVV|++/VVVVV/'+++++
"   +++++|VVVVVV|/VVVVV/'+++++++++
"     +++|VVVVVVVVVVV/'+++++++++
"       +|VVVVVVVVV/'+++++++++
"        |VVVVVVV/'+++++++++
"        |VVVVV/'+++++++++
"        |VVV/'+++++++++
"        'V/'   ++++++
"                 ++

"" PLUGINS {{{
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pandark/42header.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
"" }}}

"" VISUAL SETTINGS {{{
syntax on
set number
set hlsearch
"" }}}

"" COLLAPSIBLE CODE {{{
set foldmethod=syntax
set foldnestmax=1
""" }}}

""KEYBOARD SHORTCUTS {{{
:nmap <C-N><C-N> :set invnumber<CR>
:set listchars=tab:▒░,trail:▓
:nmap <C-M><C-M> :set invlist<CR>
"" }}}

"" INDENTATION {{{
set cindent
set tabstop=4
set shiftwidth=4
"" }}}

"" 42-HEADER CONFIG {{{
let $USER = 'bazuara'
let $MAIL = $USER . '@student.42madrid.'
"" }}}

if expand('%:t') == ".vimrc"
	set foldmethod=marker
endif
