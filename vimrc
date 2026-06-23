set autochdir autoindent autoread autowrite cinoptions+=:0,l1,g0,t0 clipboard=unnamedplus encoding=utf-8 hidden hlsearch incsearch ignorecase smartcase lazyredraw linebreak mouse=ni nojoinspaces noswapfile number pastetoggle=<f2> termguicolors title undofile undodir=/tmp wildmenu wildoptions=fuzzy pumheight=5

" Unneeded because of vim-9.2:
" backspace=2 ruler showcmd
" Unneeded because of defaults:
" tabstop=8 shiftwidth=0

syntax on
filetype plugin indent on

cm W! w !sudo tee % >/dev/null
nm <m-b> :ls<cr>:b
nn <c-l> :nohl<cr><c-l>
nm U <c-r>
nm ñ :
xm ñ :
nm <silent> <f5> :make<cr>

" moth basic badwolf busybee busierbee buddy benlight void
colo void

aug file_extensions
	au!
	au BufEnter,BufNew *.c,*.h,*.cc,*.hh,*.cpp,*.cs setl cin mp=make\ -j$(nproc)
	au BufEnter,BufNew *.cs,*.html,*.tex setl ts=4 sw=4
	au BufEnter,BufNew *.txt,*.md,*.org,*.tex setl nonu
aug END

aug file_types
	au!
	au FileType help,man map <silent> <buffer> q <c-w>q
	au FileType man setl noma nolist nonu nomod
	au FileType markdown setl mp=pandoc\ -s\ %\ -o\ %:r.pdf
	au FileType markdown xm <c-t> :!tr -s " " \| column -t -s '\|' -o '\|'<cr>
	au FileType tex setl mp=pdflatex\ %
	au FileType tex xm <c-t> :!tr -s " " \| column -t -s '&' -o '&'<cr>
aug END

pa! comment
