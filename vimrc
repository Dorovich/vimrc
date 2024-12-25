set autochdir
set autoindent cindent cinoptions+=:0,l1,t0
set autoread 
set autowrite
set background=dark
set backspace=2
set clipboard=unnamedplus
set encoding=utf-8
set hidden
set hlsearch incsearch
set ignorecase smartcase
set lazyredraw
set linebreak
set makeprg=make\ -j$(nproc)
set mouse=ni
set noswapfile
set nowrap
set number
set ruler
set shortmess=atTIO
set showcmd
set tabstop=8
set termguicolors
set title
set undofile undodir=~/.config/vim/tmp/undo
set viewoptions-=options viewdir=~/.config/vim/tmp/view
set viminfofile=~/.config/vim/tmp/viminfo
set wildmenu wildoptions=pum pumheight=20

nmap U <c-r>
nmap ñ :
nmap gb :buffers<cr>:b
xmap ñ :

command! Rootw w !sudo tee %

autocmd FileType c,cpp setlocal colorcolumn=80
autocmd FileType text,markdown setlocal wrap nonumber

syntax enable
filetype plugin indent on
