set autochdir
set autoindent
set autoread
set autowrite
set background=dark
set backspace=2
set cindent cinoptions+=:0,l1,t0
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
set pumheight=20
set ruler
set shortmess=atTIO
set showcmd
set tabstop=8
set termguicolors
set title
set undofile undodir=~/.config/vim/tmp/undo
set viewoptions-=options viewdir=~/.config/vim/tmp/view
set viminfofile=~/.config/vim/tmp/viminfo
set wildmenu wildoptions=pum

autocmd FileType c,cpp setlocal colorcolumn=80

syntax enable
filetype plugin indent on

let g:mapleader = ','

nmap <silent> <leader>e :cwindow<cr>
nmap <leader>r :%s//g<left><left>
nmap <silent> <leader>g :Git<cr>
nmap U <c-r>
nmap ñ :
nmap gb :buffers<cr>:b<space>
xmap < <gv
xmap > >gv
xmap ñ :

command! SudoWrite w !sudo tee %

let g:srcery_bold = 1
let g:srcery_italic = 1
let g:srcery_bg = ['NONE', 'NONE']
let g:srcery_inverse = 1

colorscheme srcery
