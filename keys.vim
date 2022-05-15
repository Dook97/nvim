" Alternate way to save
nnoremap <leader>w :up<CR>

" Alternate way to quit
nnoremap <leader>q :q!<CR>

" Chop line into shorter lines
nnoremap Q gqq

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Easy scrolling
nnoremap <C-x> <C-e>
nnoremap <C-z> <C-y>

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
nnoremap = <C-w>+
nnoremap - <C-w>-
nnoremap ; <C-w>>
nnoremap ' <C-w><
" split to empty file
nnoremap <C-w>s <C-w>n
nnoremap <C-w><C-s> <C-w>n
nnoremap <C-w>v :vnew<CR>
nnoremap <C-w><C-v> :vnew<CR>

" easy tabs
nnoremap <leader>a gt
nnoremap <C-t> :tabe<CR>

" built in terminal escape to normal mode
tnoremap <C-x> <C-\><C-N>

" copy to system clipboard
map Y "+y
nnoremap YY "+yy

" no-highlight shortcut
nnoremap <leader>h :noh<CR>

" easier (un)commenting
map <leader>c :Commentary<CR>

" Nerd tree
map <leader>n :NERDTreeToggle<CR>

" Check file in shellcheck:
map <leader>s :!clear && shellcheck -x %<CR>
