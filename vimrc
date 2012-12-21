" ~/.vimrc This is the VIM config file of Pomke Nohkan 
" <pomke@pomke.com>, Licenced under the MIT licence, use it
" any way you like, I like it with tea and cake personally..


"<---------------------------This line is 80 chars wide ----------------------->

" Window Setup
autocmd GUIEnter * :set guioptions=agitve 
" Font Setup
set gfn=Courier\ New\ 10
" Filetype Setup
au FileType python source ~/.vim/python.vim
au FileType python source ~/.vim/indent/python.vim
au BufNewFile,BufRead *.note setf note
" make the cwd change with the current buffer, :e is always relative
autocmd BufEnter * :cd %:p:h 
"au BufNew *.py,*.tac :silent !ctags -a -f ~/TAGS -R %:p:h
autocmd BufEnter *.xhtml,*.pt,*zcml :set ft=xml
autocmd BufEnter test_*.txt :set ft=doctest
filetype plugin indent on
autocmd BufEnter * :call PYTabs() 
autocmd BufEnter *.xhtml,*.pt,*zcml :call XMLTabs() 
" Behavior Setup
set nocompatible
set nowrap
set hls                 "highlight searches
set scrolloff=10
set noswapfile
set hidden
set wildmenu
set updatetime=1000
set history=50          "How many lines of history to keep
set showcmd             "Auto-complete commands <tab>
set incsearch           "Incremental searching
set autoindent          "Indent code as you type
set mouse=a             "Enable mouse support
set mousemodel=popup_setpos "Modify the mouse behaviour
syntax on
set ruler               "Show cursor position x/y in statusbar
set lcs=tab:^.          "Show us those ugly tabspaces
set list
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>

" Select a colour scheme
if has("gui_running")    "Set the colourscheme for the GUI mode
  let moria_style = 'dark' 
  colorscheme moria
  "colorscheme pomke
else                     "Set the colourscheme for Terminal mode
  colorscheme default
endif

" Enable rainbow braces
let g:rainbow_active = 1 
let g:rainbow_operators = 1 

" Highlight tabs! then use :retab to nuke them ^_^
autocmd BufEnter *.py,*.js :SpaceHi

"###### KEY MAPPING ######"

" FKeys
map <F2> :call ToggleLayout()<CR>  
map <F5> :call InsertDate()<CR>
map! <F1> <Esc>:Tlist<CR>
map <F1> :Tlist<CR>
map! <F6> <Esc>:make<CR>:cw<CR>
map <F6> :make<CR>:cw<CR>
map <F3> <C-]>


" tab mappings (make tabs behave like firefox)
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
map <C-6> 6gt
map <C-7> 7gt
map <C-8> 8gt
map <C-9> 9gt
map <C-t> :tabnew<CR>

" open cwd in current buffer 
map <D-e> :e .<CR>
" open cwd in new window
map <S-D-e> :sp .<CR>

" EMACS mappings, to make emacs users happy while pair programming
map! <C-s> <ESC>:w<CR>
map! <C-g> <ESC>
map! <C-x> <ESC>
map <C-s> :w<CR>
map <C-g> <ESC>
map <C-x> <ESC>
map <C-c> :q<CR>

" quick buffer switching (Don't seem to use this much anymore..)
nmap <delete> :bp<CR>

" do some cool formatting of the current block
map <C-f> ==

"###### PLUGIN OPTIONS ######"

" potwiki, manage your notes in vim ^_^
set tags=~/TAGS
let potwiki_home = "~/docs/WikiIndex"
let potwiki_autowrite =1
highlight PotwikiWord          guifg=darkcyan
highlight PotwikiWordNotFound  guifg=Maroon

let Tlist_WinWidth = 40
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Compact_Format = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Inc_Winwidth = 1

let python_highlighting_all = 1
let python_highlight_all = 1
let python_slow_sync = 1
let g:miniBufExplSplitBelow=1  
let g:miniBufExplMapCTabSwitchBufs = 1
let g:spotlightopen_match = 2
"let g:spotlightopen_limitftype = "public.plain-text" 
let spell_language_list = "british"
let g:miniBufExplSplitBelow=0

"###### CUSTOM STUFF ######"

" Configure pyflakes as the python compiler, good for code quality
" see <F6> shortcuts
autocmd BufEnter *.py :compiler pyflakes
fun Pyflakes()
    :make
    :cw
endfun

fun XMLTabs()
    set tabstop=2           "How many spaces == <tab>
    set softtabstop=2
    set shiftwidth=2
    set expandtab           "insert spaces for tabs
endfun

fun PYTabs()
    set tabstop=4           "How many spaces == <tab>
    set softtabstop=4
    set shiftwidth=4
    set expandtab           "insert spaces for tabs
endfun

" Toggle 2 or 1 pane layout, bound to <F2>
" Added support for Tlist

fun CheckInVerticalSplit()
    let current = winnr()
    :wincmd j
    if winnr() != current
        :wincmd p
        return 1
    endif
    :wincmd p
    :wincmd k
    if winnr() != current
        :wincmd p
        return 1
    endif
    :wincmd p
    return 0
endfun

fun ExpandIfSplitVertical()
    if CheckInVerticalSplit() == 1
        :resize 40
    endif
endfun

let g:layout = 0
fun ToggleLayout()
    let winnum = bufwinnr(g:TagList_title)
    if winnum != -1
        let extraSize = 40
    else
        let extraSize = 0
    endif
    if g:layout == 0
        :exec "winsize " 161 + extraSize " 45"
        :vs
        let g:layout = 1
    else
        :exec "winsize " 80 + extraSize " 45"
        if winnr('$') > 1
            :q
        endif
        let g:layout = 0
    endif
endfun

" Switch themese based on the ambient light sensor in a macbook pro
"autocmd BufEnter * :call SyncThemeToAmbientLight()
function SyncThemeToAmbientLight()
    let ambientLight = system("/Users/pomke/lmutracker | awk ' {print $1} '")
    if ambientLight > 1000
        colorscheme whitedust
    else
        colorscheme asu1dark
    endif
endfunction

" Python help browser, :Pyhelp path.to.module, ie: :Pyhelp os.path.exists
:command -nargs=+ Pyhelp :call ShowPydoc("<args>")
function ShowPydoc(module, ...)
    let fPath = "/tmp/pyHelp_" . a:module . ".pydoc"
    :execute ":!pydoc " . a:module . " > " . fPath
    :execute ":sp ".fPath
endfunction

function! CleverTab()
   if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
      return "\<Tab>"
   else
      return "\<C-N>"
endfunction

function! InsertDate()
    :r!date +"\%a,  \%d \%b \%Y \%T +1000"
endfunction

function TGrep()
    let pattern = inputdialog("What would you like to find?")
    :execute ":grep -r  --exclude=tags \"" . pattern . "\" ." 
    :copen
endfunction


"###### SANDBOX, HERE BE DRAGONS! ENTER AT OWN RISK! ######"

"map <F8> :call RollDice()<CR>
"function RollDice()
"    let dieToRoll = input("How many d10s to roll? ")
"    let dif = input("What is the difficulty? ") 
"    :execute ":py roll(".dieToRoll.",".dif.")" 
"endfunction
"
""autocmd BufReadPost * if getline(1) =~ 'MDEFS' | call SetVar(getline(1)) | endif
"python << __py__
"import vim
"
"def getVarsFromFirstLine():
"    l = vim.current.buffer[0]
"    if 'MDEFS' in l:
"        return dict([p.split('=')
"            for p in l.split('MDEFS')[1].strip().split(',')])
"    return {}
"
"def insertMacro(key):
"    v = getVarsFromFirstLine()[str(key)]
"    vim.command("let @r='%s'" % (v,))
"    vim.command('normal "rp')
"__py__
"    
"map m1 :py insertMacro(1)<CR>
"map m2 :py insertMacro(2)<CR>
"map m3 :py insertMacro(3)<CR>
"map m4 :py insertMacro(4)<CR>
"map m5 :py insertMacro(5)<CR>
"map m6 :py insertMacro(6)<CR>
"map m7 :py insertMacro(7)<CR>
"map m8 :py insertMacro(8)<CR>
"map m9 :py insertMacro(9)<CR>
"
"vmap <C-l> :py tokensToList()<CR>
"python << __end_of_python__
"import vim, tokenize
"
"def gen(lines):
"    for l in lines:
"        yield l
"    yield ""
"
"def tokensToList():
"    g = tokenize.generate_tokens(gen(vim.current.range).next)
"    l = []
"    while 1:
"        try:
"            t = g.next()
"            if t[0] not in [0,1,3,4]:
"                raise TypeError, "Invalid content selected"
"            if t[0] == 1:
"                l.append(t[1])
"            if t[0] == 3:
"                l.append(t[1].replace('"','').replace("'",''))
"        except:
"            break
"    vim.current.range.append(repr(l))
"    vim.current.range[:-1] = None
"
"from random import randint
"def roll(count, dif):
"    ones = tens = successes = 0
"    rolls = [randint(1,10) for i in range(count)]
"    for r in rolls:
"        if r == 10:
"            tens += 1
"        elif r == 1:
"            ones += 1
"        if r >= dif:
"            successes += 1
"    botches = ones - tens
"    if botches > 0:
"        successes -= botches
"
"    string = "Success: %s, Tens: %s, Ones: %s. %s" % (
"        successes, tens, ones, rolls) 
"    for b in vim.buffers:
"        if type(b.name) == type("") and b.name.endswith('die'):
"            b.append(string)
"    print string
"__end_of_python__
