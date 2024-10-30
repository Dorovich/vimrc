set autoindent
set autoread
set autowrite
set backspace=2
set backupdir=~/.vim/tmp/backup
set bg=dark
set cindent
set cinoptions+=l1,t0
set clipboard=unnamedplus
set hidden
set hlsearch incsearch
set ignorecase smartcase
set lazyredraw
set makeprg=make\ -kj$(nproc)
set mouse=ni
set noswapfile
set nowrap
set showcmd
set tabstop=8
set title
set undofile undodir=~/.vim/tmp/undo
set viewoptions-=options viewdir=~/.vim/tmp/view
set viminfo+=n~/.vim/.viminfo
set wildmenu

syntax enable
filetype plugin indent on

let g:mapleader = ','

map <leader>r :%s//g<left><left>
map U <c-r>
map ñ :
nmap gb :buffers<cr>:b<space>
xmap < <gv
xmap > >gv
xmap ñ :

command! SudoWrite w !sudo tee %

autocmd FileType c,cpp setlocal colorcolumn=80

call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
call plug#end()

" map <leader>p :r !xsel -o -b<cr>
" map <leader>y :w !xsel -i -b<cr><cr>
" call job_start("xset r rate 300 35")
