" you need to have the Plug plugin manager installed
" use :PlugInstall to download these
call plug#begin('~/.config/nvim/plugged')
	Plug 'tpope/vim-surround'	" super useful to (un)surround stuff
	Plug 'preservim/nerdtree'	" integrated file manager
	Plug 'itchyny/lightline.vim'	" statusline plugin
	Plug 'tpope/vim-commentary'	" comment stuff
	Plug 'ap/vim-css-color'	" show colors in css files
	Plug 'unblevable/quick-scope'	" easier f/F navigation
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}	" syntax highlighting
	Plug 'tpope/vim-repeat'	" enables . command for some plugins
	Plug 'glts/vim-magnum'	" library needed for vim-radical
	Plug 'glts/vim-radical'	" number conversions
call plug#end()

" nerdtree
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeShowHidden=1
let NERDTreeCascadeSingleChildDir=0
let NERDTreeCascadeOpenSingleChildDir=0

" lightline
let g:lightline = { 'colorscheme' : 'powerline_transparent' }
let g:lightline.tabline = { 'left' : [[ 'tabs' ]], 'right' : [[ ]] }
let g:lightline.tabline_separator    = { 'left': '', 'right': '' }
let g:lightline.tabline_subseparator = { 'left': '', 'right': '' }

" quick-scope
hi QuickScopePrimary   cterm=reverse
hi QuickScopeSecondary cterm=reverse
let g:qs_highlight_on_keys = ['f', 'F']

" tree-sitter syntax highlighting
lua << EOF
require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all"
  ensure_installed = {
	  "c", "cpp", "go", "javascript", "json", "latex", "python",
	  "typescript", "lua"
  },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,

    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = false,
  },
}

require"nvim-treesitter.highlight".set_custom_captures {
  ["parameter"] = "Normal",
  ["property"]  = "Normal",
  ["operator"]  = "Normal",
}
EOF
