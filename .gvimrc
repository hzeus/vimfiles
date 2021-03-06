" Automatically broadcast changes to this file to all active vim instances
if has("autocmd")
  autocmd bufwritepost .gvimrc source ~/.gvimrc
endif

set guioptions=aA      " Reset GUI options, enabling autoselection (enabling clipboard interactions)
set guioptions+=c      " Use console dialogs instead of popup dialogs for simple choices
set guioptions+=e      " Use nice-looking tabs

set guifont=Monaco:h12

"Shortcuts for switching tabs
map <C-T> gt
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt
map <D-0> :tablast<CR>

" CommandT
if has("gui_macvim")
  " Command-T for CommandT
  macmenu &File.New\ Tab key=<nop>
  map <D-t> :CtrlP<CR>

  " Command-Shift-F for Ack
  macmenu Window.Toggle\ Full\ Screen\ Mode key=<nop>
  map <D-F> :Ack<space>
endif
