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
inoremap <> <><Left>
inoremap '' ''<LEFT>
inoremap "" ""<LEFT>

inoremap （） ()<Left>
inoremap １ 1
inoremap ２ 2
inoremap ３ 3
inoremap ４ 4
inoremap ５ 5
inoremap ６ 6
inoremap ７ 7
inoremap ８ 8
inoremap ９ 9
inoremap ０ 0



colo default
syntax on



inoremap [<Enter> []<Left><CR><ESC><S-o>
inoremap printf printf("");<Left><Left><Left>


