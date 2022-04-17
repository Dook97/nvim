let mapleader=","

source ~/.config/nvim/plugins-conf.vim
source ~/.config/nvim/keys.vim

" self-explanatory
syntax enable
set smartindent
set autoindent
set encoding=utf-8
set fileencoding=utf-8

" make tab 4 spaces wide
set tabstop=4
set shiftwidth=4

" no. of lines from top/bottom where the viewport will move to avoid cursor
" going that high
set scrolloff=1

" unncessary since were using lightline plugin
set noruler
set noshowmode
set noshowcmd

" Splits open at the bottom and right, which is non-retarded, unlike vim defaults.
set splitbelow splitright

" decrease key combination timeout
set timeoutlen=300

" set number colors - you can remove the two bottom lines, if you dont want
" different color for current line
highlight LineNr ctermfg=81
highlight LineNrAbove ctermfg=11
highlight LineNrBelow ctermfg=11

" make vertical split line not annoying
hi VertSplit ctermfg=None ctermbg=None cterm=None

" hybrid numbers - relative in normal mode, absolute in insert mode
" if you experience lag you might want to disable the autogroup part of this
set number
augroup numbertoggle
	autocmd!
	autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
	autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
augroup END

" disables numbers in terminal mode
autocmd TermOpen * setlocal nonumber norelativenumber

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Automatically deletes all trailing whitespace and newlines at end of file on save
autocmd BufWritePre * let currPos = getpos(".")
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
autocmd BufWritePre * cal cursor(currPos[1], currPos[2])

" auto source when writing to init.vim alternatively you can run :source $MYVIMRC
au! BufWritePost $MYVIMRC source %
