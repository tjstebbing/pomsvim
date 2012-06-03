" Vim color file
" Maintainer:   TJS <tjs@tjs.id.au>
" Last Change:  14 April 2004
" Borrowed format from aqua theme

" cool help screens
" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=light
hi clear
if exists("syntax_on")
    syntax reset
endif
let colors_name="tjs-casual"

hi Normal  gui=NONE guifg=#000000 guibg=#fdfdfd
"hi Normal  gui=NONE guifg=#7c766a guibg=#fdfdfd
hi NonText gui=BOLD guibg=#fdfdfd

" Search
hi IncSearch gui=BOLD guifg=#ffc600 guibg=#ffeba6
hi Search    gui=BOLD guifg=#ffc600 guibg=#ffeba6

" Messages
hi ErrorMsg   gui=BOLD guifg=#fdfdfd guibg=#FF0000
hi WarningMsg gui=BOLD guifg=#008000 guibg=#CCFF00

" Diff
hi DiffText     gui=BOLD guifg=#FF0000 guibg=#FFEAE0
hi DiffChange   gui=BOLD guifg=#303030 guibg=#fdfdfd
hi DiffDelete   gui=NONE guifg=#fdfdfd guibg=#FF0000
hi DiffAdd      gui=NONE guifg=#008000 guibg=#00FF00

" Cursor
hi Cursor       gui=BOLD guifg=#fdfdfd guibg=#000000
hi lCursor      gui=BOLD guifg=#f8f8f8 guibg=#162CF7
hi CursorIM     gui=NONE guifg=#f8f8f8 guibg=#162CF7

" Fold
hi Folded	  gui=BOLD guifg=#7c766a guibg=#e8e8e8
hi FoldColumn gui=NONE guifg=#7c766a guibg=#e8e8e8

" Other
hi LineNr		gui=BOLD guifg=#7c766a guibg=#e8e8e8
hi Directory    gui=BOLD guifg=#705200 guibg=#fdfdfd
hi NonText      gui=BOLD guifg=#009999 guibg=#fdfdfd
hi SpecialKey   gui=BOLD guifg=#d8d8d8 guibg=#f8f8f8
hi Title        gui=BOLD guifg=#0000A0 guibg=#fdfdfd
hi Visual       gui=NONE guifg=#404060 guibg=#dddde8

"stuff
hi Question		gui=italic guifg=#95a87f guibg=#fdfdfd
hi MoreMsg		gui=italic guifg=#95a87f guibg=#fdfdfd

" Syntax group
" purple was #8000FF
"hi Comment    gui=italic guifg=#af8411 guibg=#ffffff
hi Comment    gui=italic guifg=#555555 guibg=#fdfdfd
"hi Constant	  gui=NONE guifg=#a89d7f guibg=#fdfdfd
"hi Constant	  gui=italic guifg=#95a87f guibg=#fdfdfd
hi Constant	  gui=bold guifg=#1c64ff guibg=#fdfdfd
hi Error      gui=BOLD guifg=#FF0000 guibg=#fdfdfd
hi Identifier gui=BOLD guifg=#af8411 guibg=#fdfdfd 
hi Ignore     gui=NONE guifg=#f8f8f8 guibg=#fdfdfd
hi PreProc	  gui=BOLD guifg=#c88400 guibg=#fdfdfd
hi Special    gui=NONE guifg=#ffae00 guibg=#fdfdfd
hi Statement  gui=NONE guifg=#af8411 guibg=#fdfdfd
hi Todo       gui=NONE guifg=#af0505 guibg=#fdfdfd
hi Type		  gui=BOLD guifg=#705200 guibg=#fdfdfd
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
hi Scrollbar  gui=BOLD guifg=#00C0FF guibg=#e8e8e8
hi VertSplit  gui=BOLD guifg=#fdfdfd guibg=#e8e8e8
hi Visual	  gui=BOLD guifg=#af8411 guibg=#fffcf1
" Split area
hi StatusLine   gui=BOLD guifg=#7c766a guibg=#d8d8d8
hi StatusLineNC gui=BOLD guifg=#7c766a guibg=#d8d8d8



