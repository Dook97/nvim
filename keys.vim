" Alternate way to save
nnoremap <C-s> :w<CR>

" Alternate way to quit
nnoremap <C-q> :q!<CR>

" Chop line into shorter lines
nnoremap Q gqq

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Easy scrolling
nnoremap <C-x> <C-e>

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

" easy moving between windows
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
" resize window
nnoremap ´ <C-w>+
nnoremap = <C-w>-
nnoremap í <C-w>>
nnoremap é <C-w><
" split to empty file
nnoremap <C-w>s <C-w>n
nnoremap <C-w><C-s> <C-w>n
nnoremap <C-w>v :vnew<CR>
nnoremap <C-w><C-v> :vnew<CR>

" easy tabs
nnoremap <C-i> gt
nnoremap <C-t> :tabe<CR>

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
