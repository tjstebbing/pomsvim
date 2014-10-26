"               ~/.vimrc This is the VIM config file of Pomke Nohkan 
"             <pomke@pomke.com>, Licenced under the MIT licence, use it
"              any way you like, I like it with tea and cake personally..


"<---------------------------This line is 80 chars wide ----------------------->


                        """""""""""""""""""""""""""""""""
                        "   Configure basic behavoir    "
                        """""""""""""""""""""""""""""""""  


filetype off 
set nocompatible
set nowrap
set hls                                         " highlight searches
set scrolloff=10
set noswapfile
set hidden
set wildmenu
set updatetime=1000
set history=50                                  " How many lines of history to keep
set showcmd                                     " Auto-complete commands <tab>
set incsearch                                   " Incremental searching
set autoindent                                  " Indent code as you type
set mouse=a                                     " Enable mouse support
set mousemodel=popup_setpos                     " Modify the mouse behaviour
syntax on
set ruler                                       " Show cursor position x/y in statusbar
set lcs=tab:^.                                  " Show us those ugly tabspaces
set list
set gfn=Droid\ Sans\ Mono\ for\ Powerline\ 11   " Font Setup
autocmd GUIEnter * :set guioptions=agitve       " Window Setup
vnoremap p <Esc>:let current_reg = @"<CR>gvs<C-R>=current_reg<CR><Esc>



                        """""""""""""""""""""""""""""""""
                        "  Use Vundle to manage plugins "
                        """""""""""""""""""""""""""""""""  


set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'              " Vundle manages itself!
Plugin 'pomke/vim-layout'               " My layout plugin (f2)
Plugin 'tpope/vim-fugitive'             " Git helpers
Plugin 'sheerun/vim-polyglot'           " Language support for many languages
Plugin 'kien/rainbow_parentheses.vim'   " Rainbow braces
Plugin 'ervandew/supertab'              " Tabkey auto-completes
Plugin 'vim-scripts/taglist.vim'        " Tlist (F1)
Plugin 'vim-scripts/spacehi.vim'        " Highlight trailing spaces
Plugin 'vim-scripts/showPairs'          " Highlight current parens 
Plugin 'vim-scripts/moria'              " Pom's fav theme
Plugin 'vim-scripts/Colour-Sampler-Pack'
Plugin 'bling/vim-airline'              " much nicer prompt/status
Plugin 'mbbill/undotree'                " undo tree searching
Plugin 'airblade/vim-gitgutter'         " show git status in the gutter
Plugin 'scrooloose/syntastic'           " syntax checker handling
call vundle#end()            
filetype plugin indent on    


                        """""""""""""""""""""""""""""""""""""
                        "  Configure buffer type behaviors  "
                        """""""""""""""""""""""""""""""""""""  


autocmd BufEnter * :cd %:p:h " make the cwd change with buffer, :e is always relative
autocmd BufEnter *.py,*.js :SpaceHi " Highlight tabs! then use :retab to nuke them ^_^
autocmd BufEnter * :call PYTabs() 
autocmd BufEnter *.py :compiler pyflakes



                        """""""""""""""""""""""""""""""""""""
                        "              Colours              "
                        """""""""""""""""""""""""""""""""""""  


if has("gui_running")    
    " GUI mode colours
    let moria_style = 'dark' 
    colorscheme moria
else                     
    " Terminal mode colours
    colorscheme default
endif


                              """"""""""""""""""""""""""
                              "      Key Mappings      "
                              """"""""""""""""""""""""""


" Layout management
map <F2> :call ToggleLayout()<CR>  
map <F4> :call UndotreeToggle()<CR>
map <F3> :GitGutterToggle<CR>
map! <F1> <Esc>:Tlist<CR>
map <F1> :Tlist<CR>

" Compiler (lint) 
map! <F6> <Esc>:make<CR>:cw<CR>
map <F6> :make<CR>:cw<CR>

" Ctrl+s saves file
map! <C-s> <ESC>:w<CR>
map <C-s> :w<CR>

" quick buffer switching (Don't seem to use this much anymore..)
nmap <delete> :bp<CR>

" do some cool format:call GitGutterToggleting of the current block
map <C-f> ==



                              """"""""""""""""""""""""""
                              "  Plugin configuration  "
                              """"""""""""""""""""""""""

if has("gui_running")    
    let g:gitgutter_sign_column_always = 1
    set laststatus=2
else                     
    let g:gitgutter_enabled = 0
endif


au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

set tags=~/TAGS

let Tlist_WinWidth = 40
let Tlist_Exit_OnlyWindow = 1
let Tlist_Show_One_File = 1
let Tlist_Compact_Format = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Inc_Winwidth = 1


let spell_language_list = "british"

let g:undotree_WindowLayout = 4


" Airline config 
set noshowmode
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'
                              """"""""""""""""""""""""""
                              "    Helper functions    "
                              """"""""""""""""""""""""""

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
