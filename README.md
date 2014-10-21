
![Pomke's Vim](https://github.com/pomke/pomsvim/raw/master/docs/screenshot2.png)

## Some highlights

* Simplified UI, it looks like a terminal window, menus are gone (you can always 
access them with :popup). Fkeys let you toggle from single window to two-pane, 
full 'IDE' mode in various combos (use :sp to get more windowy goodness).
* 80 character friendly, use F2 to toggle between one or two 80 char side-by-side
buffers.
* View classes and functions in a sidebar, hit F1 to toggle.
* Python helpers galore! knows about PEP8, shows tab characters in all their 
gory detail so you can quickly nuke them with :retab.
* Javascript friendly, custom tweaks make javascript highlighting and indenting
better.
* Tab key auto-complete, matches all open buffers.
* Spell-check in text documents!
* pyflakes lint for python code (apt-get install pyflakes), just hit F6.
* Built in wiki, (mkdir ~/docs) then \ww to start, just type WikiWords, great for
personal notes.
* More themes than you can shake a stick at, type :popup Themes  for a menu.
* lots of other stuff I can't remember, you'll have to dig through vimrc ^_^


## What does all of that look like?

![Pomke's Vim](https://github.com/pomke/pomsvim/raw/master/docs/screenshot1.png)

Showing two split buffers, javascript on the left, python on the right, with some
suggested improvements from pyflakes on the bottom (F6) 

## Install it
```sh

apt-get install vim pyflakes aspell-en exuberant-ctags

git clone https://github.com/pomke/pomsvim.git
cd pomsvim
./install.sh  #symlinks ~/.vimrc and ~/.vim 

vim +PluginInstall +qall
```
