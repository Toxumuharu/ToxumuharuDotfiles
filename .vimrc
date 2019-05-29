set encoding=utf-8
scriptencoding utf-8
set mouse=a
set nocompatible
set whichwrap=b,s,h,l,<,>,[,]
set backspace=indent,eol,start
set number
set cursorline
set clipboard+=unnamed

inoremap { {}<Left>
inoremap {} {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap () ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>
inoremap [ []<Left>
inoremap [] []<Left>
inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap < <><Left>
inoremap <> <><Left>
inoremap ' ''<LEFT>
inoremap " ""<LEFT>

colo default
syntax on






