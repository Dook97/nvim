" Alternate way to save
nnoremap <leader>w :up<CR>

" Alternate way to quit
nnoremap <leader>q :q!<CR>
nnoremap <leader>Q :qa!<CR>

" Chop line into shorter lines
nnoremap Q gqq
vnoremap Q gq

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Easy scrolling
noremap <C-x> <C-e>
noremap <C-z> <C-y>

" wrap selection
vnoremap ( c()<Esc>hp
vnoremap { c{}<Esc>hp
vnoremap [ c[]<Esc>hp

" parens auto-close
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
nnoremap \ <C-w><
nnoremap ' <C-w>>

" split to empty buffer
noremap  <C-w>s <C-w>n
nnoremap <C-w><C-s> <C-w>n
nnoremap <C-w>v :vnew<CR>
nnoremap <C-w><C-v> :vnew<CR>

" easy tabs
nnoremap <leader>a gt
nnoremap <leader>t :tabe<CR>

" built in terminal escape to normal mode
tnoremap <C-x> <C-\><C-N>

" copy to system clipboard
noremap Y "+y
nnoremap YY "+yy

" no-highlight shortcut
nnoremap <leader>h :noh<CR>

" Nerd tree
nnoremap <leader>n :NERDTreeToggle<CR>

" Check file in shellcheck:
nnoremap <leader>s :!clear && shellcheck -x %<CR>

" Compile latex document
nnoremap <leader>l :!pdflatex %<CR>

" add/remove empty lines above/below cursor
nnoremap <silent><leader>] :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><leader>[ :set paste<CR>m`O<Esc>``:set nopaste<CR>
nnoremap <silent><leader>} m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><leader>{ m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
