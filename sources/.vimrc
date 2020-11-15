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

"" VISUAL SETTINGS {{{
syntax on
set number
set hlsearch
set backspace=indent,eol,start
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

"" PLUGINS {{{
call plug#begin()
Plug 'https://github.com/vim-syntastic/syntastic'
Plug 'vim-syntastic/syntastic'
Plug 'alexandregv/norminette-vim'
call plug#end()
" Enable norminette-vim (and gcc)
let g:syntastic_c_checkers = ['norminette', 'gcc']
let g:syntastic_aggregate_errors = 1

" Set the path to norminette (do no set if using norminette of 42 mac)
let g:syntastic_c_norminette_exec = '~/.norminette/norminette.rb'

" Support headers (.h)
let g:c_syntax_for_h = 1
let g:syntastic_c_include_dirs = ['include', '../include', '../../include', 'libft', '../libft/include', '../../libft/include']

" Pass custom arguments to norminette (this one ignores 42header)
let g:syntastic_c_norminette_args = '-R CheckTopCommentHeader'

" Check errors when opening a file (disable to speed up startup time)
let g:syntastic_check_on_open = 1

" Enable error list
let g:syntastic_always_populate_loc_list = 1

" Automatically open error list
let g:syntastic_auto_loc_list = 1

" Skip check when closing
let g:syntastic_check_on_wq = 0
"" }}}


"" 42-HEADER CONFIG {{{
let $USER = 'bazuara'
let $MAIL = $USER . '@student.42madrid.'
"" }}}

"" Inserts {{{
function! C42comment()
	r~/.vim/skeletons/42comment
endfunction
:command Skel42comment call C42comment() 
"" }}}

function! SkelMakefile()
	r~/.vim/skeletons/makefile.skel
endfunction
:command SkelMf call SkelMakefile() 

"" Handy commands {{{
:command HumanJson execute "%!python -m json.tool"
"" }}}
if expand('%:t') == ".vimrc"
	set foldmethod=marker
endif
