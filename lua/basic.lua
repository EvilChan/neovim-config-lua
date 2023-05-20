-- 用于缓存的文本、寄存器、vim脚本文件等
vim.g.encoding = "UTF-8"
-- 写入文件时采用的编码类型
vim.o.fileencoding = "utf-8"
-- 命令行高为2，提供足够的显示空间
vim.o.cmdheight = 1
-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 显示行号
vim.o.number = true
-- 使用相对行号
vim.o.relativenumber = true
-- 高亮所在行
vim.wo.cursorline = true
-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "80"
-- 缩进4个空格等于一个tab
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
-- 将缩进四舍五入为shiftwidth倍数
-- 插入模式下 CTRL+T CTRL+D
vim.o.shiftround = true
-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4
-- 新行对齐当前行，空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 键入新行时，退出编辑模式，是否保留缩进
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 搜索不要高亮
vim.o.hlsearch = false
-- 边输入边搜索
vim.o.incsearch = true
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 禁止折行
vim.o.wrap = false
vim.wo.wrap = false
-- 行结尾可以跳到下一行
vim.o.whichwrap = "<,>,[,]"
-- 允许隐藏被修改过的buffer
vim.o.hidden = true
-- 鼠标支持
vim.o.mouse = "a"
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- smaller updatetime
-- --vim.o.updatetime = 300
-- 等待mappings
vim.o.timeoutlen = 500
-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- -- 补全增强
-- --vim.o.wildmenu = true
-- -- Don't pass messages to | ins-completin menu |
-- --vim.o.shortmess = vim.o.shortmess .. 'c'
-- --vim.o.pumheight = 10
-- 永远显示 tabline
--vim.o.showtabline = 2
