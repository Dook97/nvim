" Alternate way to save
nnoremap <C-s> :w<CR>

" Alternate way to quit
nnoremap <C-q> :q!<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" wrap selection
vnoremap ( c()<Esc>hp
vnoremap { c{}<Esc>hp
vnoremap [ c[]<Esc>hp

" auto-close
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap " ""<Esc>i
inoremap ' ''<Esc>i
inoremap ` ``<Esc>i

" built in terminal escape to normal mode
tnoremap <C-x> <C-\><C-N>

" copy to system clipboard
vnoremap Y "+y

" no-highlight shortcut
nnoremap ů :noh<CR>

" Nerd tree
map <leader>n :NERDTreeToggle<CR>

" Check file in shellcheck:
map <leader>s :!clear && shellcheck -x %<CR>

" Compile document, be it groff/LaTeX/markdown/etc.
map <leader>c :w! \| !compiler "<c-r>%"<CR>

" Runs a script that cleans out tex build files whenever I close out of a .tex file.
autocmd VimLeave *.tex !texclear %

" Save file as sudo on files that require root permission
cnoremap w!! execute 'silent! write !sudo tee % >/dev/null' <bar> edit!
