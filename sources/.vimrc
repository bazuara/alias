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

"" 42-HEADER CONFIG {{{
let $USER = 'bazuara'
let $MAIL = $USER . '@student.42madrid.'
"" }}}

"" Inserts {{{
function! C42comment()
	r~/.vim/skeletons/42comment
endfunction
:command Cc42 call C42comment() 
:command HumanJson execute "%!python -m json.tool"
"" }}}

if expand('%:t') == ".vimrc"
	set foldmethod=marker
endif
