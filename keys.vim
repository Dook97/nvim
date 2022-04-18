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

" easy windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap ´ <C-w>+
nnoremap = <C-w>-
nnoremap í <C-w>>
nnoremap é <C-w><

" easy tabs
nnoremap <c-i> gt

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
