hi clear Normal
set bg&

hi clear

if exists("syntax_on")
    syntax reset
endif

let colors_name = "tjs-console"

hi Normal       cterm=undercurl  ctermfg=lightgrey ctermbg=NONE
hi Search       cterm=NONE  ctermfg=black ctermbg=White
hi Cursor       cterm=NONE  ctermfg=black ctermbg=NONE
hi Comment      cterm=bold  ctermfg=darkcyan ctermbg=NONE
hi Special      cterm=bold  ctermfg=cyan ctermbg=NONE
hi Statement    cterm=NONE  ctermfg=lightgray ctermbg=NONE
hi Type         cterm=NONE  ctermfg=red ctermbg=NONE
hi String       cterm=bold  ctermfg=green ctermbg=NONE
hi Constant     cterm=bold  ctermfg=lightgray ctermbg=NONE
hi Error        cterm=NONE  ctermfg=black ctermbg=NONE
hi Todo         cterm=bold  ctermfg=red ctermbg=NONE
hi Identifier   cterm=bold  ctermfg=darkgray ctermbg=NONE
hi Visual       cterm=NONE  ctermfg=black ctermbg=lightgray

" vim: sw=2
