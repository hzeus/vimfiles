" Automatically broadcast changes to this file to all active vim instances
if has("autocmd")
  autocmd bufwritepost .vimrc source ~/.vimrc
endif

let mapleader = ','

set nocompatible      " Do not be compatible with Vi - be iMproved

set shell=bash

set number            " Enable line numbers
set ruler             " Enable the bar that shows you in which position your cursor is within the file
set laststatus=2      " Always show status bar

" Whitespace stuff
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Remove trailing whitespace before saving a file
if has("autocmd")
  autocmd BufWritePre * :%s/\s\+$//e
endif

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Turn off backups (Vim's *.swp files)
set nobackup
set nowritebackup

" Avoid evil non-breaking whitespace
imap <A-Space> <Space>

" Shortcuts for switching windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

source ~/my/vimfiles/Vundlefile

" Plugin settings
let g:vundle_default_git_proto = 'git'

syntax enable
set background=dark
colorscheme solarized

" wildmenu (e.g. opening files)
set wildmenu
set wildmode=full
hi WildMenu guibg=Orange
hi WildMenu guifg=Black

" Ignore files for ctrlp
set wildignore+=tags,doc,tmp,log

" Custom mappings
" Mostly taken from janus: https://github.com/carlhuda/janus/blob/master/janus/vim/core/before/plugin/mappings.vim
nnoremap <leader>f <C-]><CR>
nnoremap ü [
"nnoremap + ]
inoremap <C-s> <esc>:w<cr>
nnoremap <C-s> :w<cr>

" Some helpers to edit mode
" http://vimcasts.org/e/14
nmap <leader>ew :e <C-R>=expand('%:h').'/'<cr>
nmap <leader>es :sp <C-R>=expand('%:h').'/'<cr>
nmap <leader>ev :vsp <C-R>=expand('%:h').'/'<cr>
nmap <leader>et :tabe <C-R>=expand('%:h').'/'<cr>
