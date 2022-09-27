" VIM重新打开文件时如何回到上次停留的位置即上次退出文件时的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"插件配置开始
call plug#begin('~/.vim/plugged')
set encoding=UTF-8
" let g:plug_url_format = 'git@github.com:%S.git'
" ------------ dependent ------------
Plug 'kyazdani42/nvim-web-devicons' " nvim-tree.lua | bufferline.nvim
Plug 'moll/vim-bbye' " bufferline.nvim
" -----------------------------------
" ------------ nvim-tree ------------
Plug 'kyazdani42/nvim-tree.lua'
" -----------------------------------
" ----------lsp-----------
Plug 'williamboman/nvim-lsp-installer'
Plug 'neovim/nvim-lspconfig'
" 补全引擎
Plug 'hrsh7th/nvim-cmp'
"    -- Snippet 引擎
Plug 'hrsh7th/vim-vsnip'
"    -- 补全源
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/cmp-nvim-lsp-signature-help'
"    -- 常见编程语言代码段
Plug 'rafamadriz/friendly-snippets'
"    -- UI 增强
Plug 'onsails/lspkind-nvim'
Plug 'tami5/lspsaga.nvim'
"    -- 代码格式化
Plug 'mhartington/formatter.nvim'
Plug 'jose-elias-alvarez/null-ls.nvim'
"    -- TypeScript 增强
Plug 'jose-elias-alvarez/nvim-lsp-ts-utils'
"    -- Lua 增强
Plug 'folke/lua-dev.nvim'
"    -- JSON 增强
Plug 'b0o/schemastore.nvim'
"    -- Rust 增强
Plug 'simrat39/rust-tools.nvim'
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
-------LSP--------------
require("lsp.setup")
require('settings')
EOF





