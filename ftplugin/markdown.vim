setlocal makeprg=pandoc\ -s\ %\ -o\ %:r.pdf
setlocal noexpandtab
setlocal nonumber
setlocal wrap
xmap <c-t> :!tr -s " " \| column -t -s '\|' -o '\|'<cr>
