-- 用于缓存的文本、寄存器、vim脚本文件等
vim.g.encoding = "utf-8"
-- 写入文件时采用的编码类型
vim.o.fileencoding = "utf-8"
-- 显示行号
vim.o.number = true
-- 显示相对行号
vim.o.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 缩进4个空格等于一个tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 将缩进四舍五入为shiftwidth倍数
-- 插入模式下 CTRL+T CTRL+D
vim.o.shiftround = true
-- 空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 键入新行时，退出编辑模式，是否保留缩进
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

