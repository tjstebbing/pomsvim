winsize 90 50
colorscheme dante
syn match notComplete /^.*\[n\]/
syn match complete /^.*\[y\]/
syn match alternateSolution /^.*\[a\]/
hi def notComplete guifg=red
hi def complete guifg=green
hi def alternateSolution guifg=#a80aae
