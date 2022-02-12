" VIM重新打开文件时如何回到上次停留的位置即上次退出文件时的位置
if has("autocmd")
    au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
"显示行号
set nu
set tabstop=4 "表示一个Tab键显示出来多少个空格的长度，默认是8，这里设置为4
set softtabstop=4 "表示在编辑模式下按退格键时候退回缩进的长度，设置为4
set shiftwidth=4 "表示每一级缩进的长度，一般设置成和softtabstop长度一样
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

" NERDTree
Plug 'scrooloose/nerdtree'
nnoremap mt :NERDTreeToggle<CR>
nnoremap mf :NERDTreeFind<CR>
let NERDTreeShowHidden=1
Plug 'neovim/nvim-lspconfig'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
nnoremap <C-L> :bn<CR>
nnoremap <C-H> :bp<CR>
" @airline
let g:airline#extensions#tabline#enabled = 1   " 是否打开tabline
"这个是安装字体后 必须设置此项" 
"let g:airline_powerline_fonts = 1
set laststatus=2  "永远显示状态栏
let g:airline_theme='google_dark' "选择主题
let g:airline#extensions#tabline#enabled=1    "Smarter tab line: 显示窗口tab和buffer
let g:airline#extensions#whitespace#enabled = 0
 let g:airline#extensions#whitespace#symbol = '!'
"let g:airline#extensions#tabline#left_sep = ' '  "separater
"let g:airline#extensions#tabline#left_alt_sep = '|'  "separater
let g:airline#extensions#tabline#formatter = 'unique_tail'  "formater
"let g:airline_left_sep = '▶'
"let g:airline_left_alt_sep = '❯'
"let g:airline_right_sep = '◀'
"let g:airline_right_alt_sep = '❮'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
nnoremap <leader>df :Telescope lsp_definitions<CR>
nnoremap <leader>lg :Telescope live_grep<CR>
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"插件配置结束
call plug#end()
lua <<EOF
require'lspconfig'.tsserver.setup{}
require'nvim-treesitter.configs'.setup {
  -- 安装 language parser
  -- :TSInstallInfo 命令查看支持的语言
  ensure_installed = {"rust", "html", "css", "vim", "lua", "javascript", "typescript", "tsx"},
  -- 启用代码高亮功能
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false
  },
  -- 启用基于Treesitter的代码格式化(=) . NOTE: This is an experimental feature.
  indent = {
    enable = true
  },

  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
}
EOF
