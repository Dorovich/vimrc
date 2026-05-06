set autochdir autoindent autoread autowrite background=dark backspace=2 cinoptions+=:0,l1,g0,t0 clipboard=unnamedplus encoding=utf-8 hidden hlsearch incsearch ignorecase smartcase lazyredraw linebreak showbreak=…\  makeprg=make\ -j$(nproc) mouse=ni nojoinspaces noswapfile nowrap number numberwidth=6 pastetoggle=<f2> ruler shortmess=atTIO showcmd tabstop=8 shiftwidth=0 termguicolors title undofile undodir=/tmp wildmenu wildoptions=fuzzy pumheight=10

syntax on
filetype plugin indent on

cm W! w !sudo tee % >/dev/null
nm <m-b> :ls<cr>:b
nm <silent> <esc><esc> :nohl<cr>
nm U <c-r>
nm ñ :
xm ñ :

colo busybee " moth basic badwolf busybee busierbee buddy

aug file_exts
	au!
	au BufEnter,BufNew *.c,*.h,*.cc,*.hh,*.cpp,*.cs setl cin
	au BufEnter,BufNew *.cs,*.html,*.tex setl ts=4 sw=4
	au BufEnter,BufNew *.txt,*.md,*.org,*.tex setl nonu wrap
aug END

aug file_types
	au!
	au FileType help,man map <silent> <buffer> q <c-w>q
	au FileType man setl noma nolist nonu nomod
	au FileType markdown setl mp=pandoc\ -s\ %\ -o\ %:r.pdf
	au FileType markdown xm <c-t> :!tr -s " " \| column -t -s '\|' -o '\|'<cr>
	au FileType tex setl mp=pdflatex\ %
aug END
