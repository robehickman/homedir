colorscheme desert
set guioptions-=T
syntax on

set showtabline=0

set spell

set shiftwidth=4
set tabstop=4
set expandtab

map <C-J> <C-W>j<15C-W>_
map <C-K> <C-W>k<15C-W>_

set wmh=0

"easy frame resizing
if bufwinnr(1)
	map = <C-W>+
	map - <C-W>-
endif

"easy copy and paste
map ; :
map Y "+y
map P "+gP


function! OutlineToggle()
  if (! exists ("b:outline_mode"))
    let b:outline_mode = 0
  endif
  if (b:outline_mode == 0)
    syn region myFold start="{" end="}" transparent fold
    syn sync fromstart
    set foldmethod=syntax
    silent! exec "%s/{{{/<<</"
    silent! exec "%s/}}}/>>>/"
    let b:outline_mode = 1
  else
    set foldmethod=marker
    silent! exec "%s/<<</{{{/"
    silent! exec "%s/>>>/}}}/"
    let b:outline_mode = 0
  endif
endfunction
