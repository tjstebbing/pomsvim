syntax include @py <sfile>:p:h/python.vim
syntax region doctest_note start=+^\w.+ end=+$+
syntax region doctest_note start=+^\s\w.+ end=+$+
syntax region doctest_value start=+^\s\{2,4}+ end=+$+ 
syntax region doctest_code start=+\s\+[>.]\{3}+me=e end=+$+ contains=@py
syntax region doctest_literal start=+`\++ end=+$+ contains=@py 
syntax region doctest_header start=+=\+\n\w\++ start=+\w.\+\n=\++ end=+=$+
syntax region doctest_header start=+-\+\n\w\++ start=+\w.\+\n-\++ end=+-$+
syntax region doctest_header start=+\*\+\n\w\++ start=+\w.\+\n\*\++ end=+\*$+
syntax region doctest_note start=+\.\{2} \[+ end=+(\n\n)\|\%$+
hi link doctest_header Special
hi link doctest_value Number
hi link doctest_note Comment
