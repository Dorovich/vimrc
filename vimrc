set autoindent
set autochdir
set hlsearch
set linebreak showbreak=↪\ 
set makeprg=make\ -j$(nproc)
set termguicolors
set undofile undodir=~/.config/vim/tmp/undo
set viewoptions-=options viewdir=~/.config/vim/tmp/view
set viminfofile=~/.config/vim/tmp/viminfo
set cinoptions+=:0,l1,g0,t0
set autoread autowrite
set background=dark
set backspace=2
set clipboard=unnamedplus
set encoding=utf-8
set hidden
set pastetoggle=<f2>
set incsearch
set ignorecase smartcase
set lazyredraw
set mouse=ni
set nojoinspaces
set noswapfile
set nowrap
set number numberwidth=6
set ruler
set shortmess=atTIO
set showcmd
set tabstop=8 shiftwidth=0
set title
set wildmenu wildoptions=fuzzy pumheight=10
set listchars=tab:→\ ,space:␣,nbsp:·,trail:•,eol:$,precedes:«,extends:»

syntax on
filetype plugin indent on

cmap w!! w !sudo tee % >/dev/null
nmap <m-b> :buffers<cr>:b
nmap <silent> <esc><esc> :nohl<cr>
nmap U <c-r>
nmap ñ :
xmap ñ :

"colorscheme moth
"colorscheme basic
colorscheme badwolf
"colorscheme busybee
"colorscheme buddy

augroup file_extensions
	autocmd!
	autocmd BufEnter,BufNew *.c,*.h,*.cc,*.hh,*.cpp,*.cs setlocal cindent
	autocmd BufEnter,BufNew *.cs,*.html,*.tex setlocal tabstop=4 shiftwidth=4
	autocmd BufEnter,BufNew *.txt,*.md,*.org,*.tex setlocal nonumber wrap
augroup END

augroup file_types
	autocmd!
	autocmd FileType help,man map <silent> <buffer> q <c-w>q
	autocmd FileType man setlocal nomodifiable nolist nonumber nomodified
	autocmd FileType markdown setlocal makeprg=pandoc\ -s\ %\ -o\ %:r.pdf
	autocmd FileType markdown xmap <c-t> :!tr -s " " \| column -t -s '\|' -o '\|'<cr>
	autocmd FileType tex setlocal makeprg=pdflatex\ %
augroup END
