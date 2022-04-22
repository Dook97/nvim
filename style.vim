" number colors for (in)active windows
hi inactive ctermfg=241
hi active ctermfg=81

" set initial
hi LineNr ctermfg=81
hi LineNrAbove ctermfg=81
hi LineNrBelow ctermfg=81

" highlight current line
set cursorline
hi CursorLine cterm=None ctermbg=239
hi CursorLineNr cterm=None ctermfg=148

" remove line highlighting on defocus
augroup linetoggle
	au!
	au BufEnter,InsertEnter * set winhl=LineNr:active
	au BufLeave,InsertLeave * set winhl=LineNr:inactive
	au BufEnter,WinEnter * setlocal cursorline | set winhl=LineNr:active
	au BufLeave,WinLeave * setlocal nocursorline | set winhl=LineNr:inactive
augroup END

" hide vertical split line and end-of-buffer tildes
hi VertSplit ctermfg=None ctermbg=None cterm=None
hi StatusLine ctermfg=None ctermbg=None cterm=None
hi StatusLineNC ctermfg=None ctermbg=None cterm=None
set fillchars+=vert:\ ,eob:\ ,
