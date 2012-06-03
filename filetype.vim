
augroup filetypedetect
    "Pyrex
    au BufNewFile,BufRead *.pyx,*.pxd setf pyrex

    " Python (support twisted)
    au BufNewFile,BufRead *.py,*.pyw,*.tac,*.cpy        setf python

    " Cascading Style Sheets (We use DTML in css mostly in zope)
    au BufNewFile,BufRead *.css,*.dtml     setf css

    " HTML (.shtml and .stm for server side)
    au BufNewFile,BufRead *.html,*.htm,*.shtml,*.stm,*.pt,*.cpt  call <SID>FTCheck_html()

    " Distinguish between HTML and XHTML
    fun! <SID>FTCheck_html()
        let n = 1
        while n < 10 && n < line("$")
            if getline(n) =~ '\<DTD\s\+XHTML\s'
                setf xhtml
                return
            endif
            let n = n + 1
        endwhile
        setf html
        setl shiftwidth=2
        setl softtabstop=2
        setl tabstop=2
    endfun

augroup END
