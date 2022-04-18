" you need to have the Plug plugin manager installed
" use :PlugInstall to download these
call plug#begin('~/.config/nvim/plugged')
	Plug 'tpope/vim-surround'
	Plug 'preservim/nerdtree'
	Plug 'itchyny/lightline.vim'
	"Plug 'tpope/vim-commentary'
	Plug 'ap/vim-css-color'
call plug#end()

" nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1

" lightline
let g:lightline = { 'colorscheme' : 'powerline_transparent' }
let g:lightline.tabline = { 'left' : [[ 'tabs' ]], 'right' : [[ ]]}
let g:lightline.tabline_separator    = { 'left': '', 'right': '' }
let g:lightline.tabline_subseparator = { 'left': '', 'right': '' }
