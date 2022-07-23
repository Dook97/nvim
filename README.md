# Lightweight Neovim config

## About

These are my configuration files for neovim.

Inside the user-styles repository is a color config for the Lightline plugin,
which allows for more colorful status bar.

![](./screenshots/vim.png)

## How to use

1) Install neovim and [Plug](https://github.com/junegunn/vim-plug).
2) copy `init.vim`, `keys.vim` and `style.vim` into your `.config/nvim`
3) use `:PlugInstall` to install all the necessarry plugins
4) copy `user-styles/powerline_transparent.vim` into
`~/.config/nvim/plugged/lightline.vim/autoload/lightline/colorscheme`
