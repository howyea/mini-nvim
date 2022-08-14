" VIM重新打开文件时如何回到上次停留的位置即上次退出文件时的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"显示行号
set nu
set tabstop=2 "表示一个Tab键显示出来多少个空格的长度，默认是8，这里设置为4
set softtabstop=2 "表示在编辑模式下按退格键时候退回缩进的长度，设置为4
set shiftwidth=2 "表示每一级缩进的长度，一般设置成和softtabstop长度一样
set noexpandtab "当设置成expantab时表示缩进用空格来表示，noexpandtab则用制表符表示一个缩进
set autoindent "表示自动缩进


"tab操作映射，nnoremap正常模式下不递归的映射
"nnoremap tn  :tabnew<CR>
"nnoremap tj  :tabnext<CR>
"nnoremap tk  :tabprev<CR>
"nnoremap tc  :tabclose<CR>
"插件配置开始
call plug#begin('~/.vim/plugged')
set encoding=UTF-8
let g:plug_url_format = 'git@github.com:%S.git'
" ------------ dependent ------------
Plug 'kyazdani42/nvim-web-devicons' " nvim-tree.lua | bufferline.nvim
Plug 'moll/vim-bbye' " bufferline.nvim
" -----------------------------------
" ------------ nvim-tree ------------
Plug 'kyazdani42/nvim-tree.lua'
" -----------------------------------
Plug 'neovim/nvim-lspconfig'
" -----------------------------------	
" ---------bufferline.nvim-----------
Plug 'akinsho/bufferline.nvim', { 'tag': 'v2.*' } 
" -----------------------------------
" --------- lueline.nvim ------------
Plug 'nvim-lualine/lualine.nvim'
Plug 'arkav/lualine-lsp-progress'
" -----------------------------------
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" -------telescope-------------------
Plug 'nvim-lua/plenary.nvim'
Plug 'rmagatti/auto-session'
Plug 'rmagatti/session-lens'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
" -----------------------------------
" -------theme------------
  Plug 'mhartington/oceanic-next'
" ------------------------
" -------toggleterm-------
  Plug 'akinsho/toggleterm.nvim', {'tag': 'v2.*'}
" ------------------------
Plug 'lukas-reineke/indent-blankline.nvim'
"插件配置结束
call plug#end()
lua <<EOF
-- key map -------------
require('keybindings')
------------------------
-- nvim tree setting ---
require('plugin-config/nvim-tree')
------------------------
------------------------
-- lualine.nvim setting-
require("plugin-config.lualine")
------------------------
---treesitter setting---
require('plugin-config/nvim-treesitter')
------------------------
-------theme------------
require("colorscheme")
------------------------
-------toggleterm-------
require("plugin-config/toggleterm")
------------------------

-------indent-blankline setting-----------
require("plugin-config.indent-blankline")
-----------------------------------
-- require'lspconfig'.tsserver.setup{}

require('settings')
EOF





