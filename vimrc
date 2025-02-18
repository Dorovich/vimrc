set autochdir
set autoindent cindent cinoptions+=:0,l1,t0
set autoread autowrite
set background=dark
set backspace=2
set clipboard=unnamedplus
set encoding=utf-8
set hidden
set hlsearch incsearch
set ignorecase smartcase
set lazyredraw
set makeprg=make\ -j$(nproc)
set mouse=ni
set nojoinspaces
set noswapfile
set nowrap linebreak showbreak=↪\ 
set number
set ruler
set shortmess=atTIO
set showcmd
set tabstop=8 shiftwidth=0
set termguicolors
set title
set undofile undodir=~/.config/vim/tmp/undo
set viewoptions-=options viewdir=~/.config/vim/tmp/view
set viminfofile=~/.config/vim/tmp/viminfo
set wildmenu wildoptions=fuzzy pumheight=10

command Rootw w !sudo tee %
nmap gb :buffers<cr>:b
nmap ñ :
nmap <silent> <esc><esc> :nohl<cr>
nmap U <c-r>
xmap ñ :

syntax on
filetype plugin indent on
colorscheme moth
