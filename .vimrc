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

colo default
syntax on



"For Japanese Setting
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
inoremap ； ;
inoremap ： :
inoremap ． .
inoremap ％ %
inoremap ＆ &
inoremap ＝ =
inoremap ＊ *
inoremap ｂ b
inoremap ｃ c
inoremap ｄ d
inoremap ｆ f
inoremap ｇ g
inoremap ｈ h
inoremap ｊ j
inoremap ｋ k
inoremap ｌ l
inoremap ｍ m
inoremap ｎ n
inoremap ｐ p
inoremap ｑ q
inoremap ｒ r
inoremap ｓ s
inoremap ｔ t
inoremap ｖ v
inoremap ｗ w
inoremap ｘ x
inoremap ｙ y
inoremap ｚ z
inoremap ー＞ ->
inoremap －＞ ->
inoremap ーー --
inoremap －－ --
inoremap － -
inoremap ？ ?

"Highlite ZENKAKU Space to whilte
autocmd Colorscheme * highlight FullWidthSpace ctermbg=white
autocmd VimEnter * match FullWidthSpace /　/
colorscheme desert 



"C
inoremap printf printf("");<Left><Left><Left>


