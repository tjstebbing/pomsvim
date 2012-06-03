"cp this file to ~/.vim/compiler/pyflakes.vim
"
"Add these lines to your ~/.vimrc:
"
"fun Pyflakes()
"    :make
"    :cw
"endfun
"autocmd BufEnter *.py :compiler pyflakes
"autocmd BufWritePost *.py :call Pyflakes()

if exists("current_compiler")
  finish
endif
let current_compiler = "pyflakes"

setlocal makeprg=(pyflakes\ %)
setlocal efm=%f:%l:\ %m
