setlocal nonumber
setlocal wrap
setlocal makeprg=emacs\ -u\ $(id\ -un)\ --batch\ --eval\ '(load\ user-init-file)'\ %\ -f\ org-latex-export-to-pdf
