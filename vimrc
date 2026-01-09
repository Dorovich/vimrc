set autoindent
set cinoptions+=:0,l1,g0,t0
set autoread autowrite
set background=dark
set backspace=2
set clipboard=unnamedplus
set encoding=utf-8
set hidden
set incsearch
set ignorecase smartcase
set lazyredraw
set mouse=vi
set nojoinspaces
set noswapfile
set nowrap
set number
set ruler
set shortmess=atTIO
set showcmd
set tabstop=8 shiftwidth=0
set title
set wildmenu wildoptions=fuzzy pumheight=10

command Rootw w !sudo tee %
nmap gb :buffers<cr>:b
nmap ñ :
nmap U <c-r>
xmap ñ :

augroup file_extensions
autocmd!
autocmd BufEnter,BufNew *.c,*.h,*.cc,*.hh,*.cpp,*.cs setlocal cindent
autocmd BufEnter,BufNew *.cs setlocal tabstop=4 shiftwidth=4
autocmd BufEnter,BufNew *.html setlocal tabstop=4 shiftwidth=4
autocmd BufEnter,BufNew *.tex setlocal nonumber wrap tabstop=4 shiftwidth=4
autocmd BufEnter,BufNew *.txt,*.md,*.org setlocal nonumber wrap
augroup END

" extra compiled features
if has('syntax')
set autochdir
set hlsearch
set linebreak showbreak=↪\ 
set makeprg=make\ -j$(nproc)
set termguicolors
set undofile undodir=~/.config/vim/tmp/undo
set viewoptions-=options viewdir=~/.config/vim/tmp/view
set viminfofile=~/.config/vim/tmp/viminfo

syntax on
filetype plugin indent on
colorscheme moth

nmap <silent> <esc><esc> :nohl<cr>
endif
