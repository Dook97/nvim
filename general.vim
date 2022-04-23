let mapleader=" "

syntax enable
set smartindent
set autoindent
set encoding=utf-8
set fileencoding=utf-8

" unncessary since were using lightline plugin
set noruler
set noshowmode

" reserved number of lines from top and bottom of viewport
set scrolloff=1

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" lazy redraw - screen will not be redrawn while executing macros etc
set lz

" only show status line if there's more than one window
set laststatus=1

" hybrid numbers - relative in normal mode, absolute in insert mode
" if you experience lag you might want to disable the autogroup part of this
set nu rnu
augroup numbertoggle
	au!
	au BufEnter,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
	au BufLeave,InsertEnter,WinLeave * if &nu                  | set nornu | endif
	au TermOpen * setlocal nonu nornu
augroup END

" Disables automatic commenting on newline:
au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex !texclear %

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!

" Automatically deletes all trailing whitespace and newlines at end of file on save
au BufWritePre * let currPos = getpos(".")
au BufWritePre * %s/\s\+$//e
au BufWritePre * %s/\n\+\%$//e
au BufWritePre *.[ch] %s/\%$/\r/e
au BufWritePre * cal cursor(currPos[1], currPos[2])

" auto source when writing to init.vim alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source %