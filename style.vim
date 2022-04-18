" grey numbers for inactive windows
hi LineNr ctermfg=241
" blue for active
hi LineNrAbove ctermfg=81
hi LineNrBelow ctermfg=81

" highlight current line
set cursorline
hi CursorLine cterm=None ctermbg=239
hi CursorLineNr cterm=None ctermfg=148

" remove line highlighting on defocus
augroup linetoggle
	au!
	au InsertEnter * set winhl=LineNr:LineNrAbove
	au InsertLeave * set winhl=LineNr:LineNr
	au WinEnter * set cursorline
	au WinLeave * set nocursorline
augroup END

" hide vertical split line and end-of-buffer tildes
hi VertSplit ctermfg=None ctermbg=None cterm=None
hi StatusLine ctermfg=None ctermbg=None cterm=None
hi StatusLineNC ctermfg=None ctermbg=None cterm=None
set fillchars+=vert:\ ,eob:\ ,
