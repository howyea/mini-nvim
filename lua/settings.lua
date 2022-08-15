local set = vim.opt

set.expandtab = true
vim.wo.number = true -- 显示行号
set.tabstop = 2 -- 表示一个Tab键显示出来多少个空格的长度，默认是8，这里设置为4
set.softtabstop = 2 -- 表示在编辑模式下按退格键时候退回缩进的长度，设置为4
set.shiftwidth = 2 -- 表示每一级缩进的长度，一般设置成和softtabstop长度一样
set.autoindent = true -- 表示自动缩进


