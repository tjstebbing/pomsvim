" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="tjs-dark"

hi Normal  gui=NONE guifg=#FFFFFF guibg=#111111
hi NonText gui=BOLD guifg=#00487f guibg=#111111

" Search
hi IncSearch gui=BOLD guifg=#008000 guibg=#CCFF00
hi Search    gui=bold guifg=#008000 guibg=#ccff00

" messages
hi errormsg   gui=bold guifg=#ffffff guibg=#ff0000
hi warningmsg gui=bold guifg=#008000 guibg=#ccff00

" split area
hi StatusLine   gui=BOLD guifg=#FFFFFF guibg=#333333
hi StatusLineNC gui=BOLD guifg=#777777 guibg=#333333

" Diff
hi DiffText     gui=BOLD guifg=#FF0000 guibg=#FFEAE0
hi DiffChange   gui=BOLD guifg=#303030 guibg=#111111
hi DiffDelete   gui=NONE guifg=#FFFFFF guibg=#FF0000
hi DiffAdd      gui=NONE guifg=#008000 guibg=#00FF00

" Cursor
hi Cursor       gui=BOLD guifg=#333333 guibg=#777777
hi lCursor      gui=BOLD guifg=#f8f8f8 guibg=#162CF7
hi CursorIM     gui=NONE guifg=#f8f8f8 guibg=#162CF7

" Fold
hi Folded	  gui=BOLD guifg=#0E8ED3 guibg=#DBF2FF
hi FoldColumn gui=NONE guifg=#0E8ED3 guibg=#DBF2FF

" Other
hi LineNr		 gui=BOLD guifg=#00A0FF guibg=#DBF2FF
hi Directory    gui=BOLD guifg=#0A6799 guibg=#111111
hi NonText      gui=BOLD guifg=#009999 guibg=#222222
hi SpecialKey   gui=BOLD guifg=#2020FF guibg=#111111
hi Title        gui=BOLD guifg=#0000A0 guibg=#111111
hi Visual       gui=NONE guifg=#E2E200 guibg=#777777

" Syntax group
" purple was #8000FF
hi Comment    gui=none guifg=#777777 guibg=#111111 
hi Constant	  gui=none guifg=#6ABB00 guibg=#111111
hi Error      gui=BOLD guifg=#FF0000 guibg=#111111
hi Identifier gui=none guifg=#6ABB00 guibg=#111111 
hi Ignore     gui=NONE guifg=#f8f8f8 guibg=#111111
hi PreProc	  gui=BOLD guifg=#0BBF20 guibg=#111111
hi Special    gui=NONE guifg=#CC0000 guibg=#111111
hi Statement  gui=none guifg=#2F97C0 guibg=#111111
hi Todo       gui=NONE guifg=#FF0070 guibg=#111111
hi Type		  gui=BOLD guifg=#5B8DBD guibg=#111111
hi Underlined gui=UNDERLINE guifg=#0000ff guibg=NONE

" HTML
hi htmlLink                 gui=UNDERLINE guifg=#0000ff guibg=NONE
hi htmlBold                 gui=BOLD
hi htmlBoldItalic           gui=BOLD,ITALIC
hi htmlBoldUnderline        gui=BOLD,UNDERLINE
hi htmlBoldUnderlineItalic  gui=BOLD,UNDERLINE,ITALIC
hi htmlItalic               gui=ITALIC
hi htmlUnderline            gui=UNDERLINE
hi htmlUnderlineItalic      gui=UNDERLINE,ITALIC

" Scrollbar
hi Scrollbar  gui=BOLD guifg=#00C0FF guibg=#111111
hi VertSplit  gui=BOLD guifg=#777777 guibg=#333333


