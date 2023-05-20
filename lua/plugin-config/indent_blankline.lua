local status, indent_blankline = pcall(require, "indent_blankline")
if not status then
    vim.notify("没有找到 indent_blankline")
    return
end

-- 不可见字符的显示，这里只把空格显示为一个点
vim.opt.list = true
vim.opt.listchars:append "space:·"
vim.opt.listchars:append "eol:↴"

indent_blankline.setup({
    -- 使用nvim-treesitter缩进指南的位置
    use_treesitter = true,
    -- 显示换行符
    show_end_of_line = true,
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
    -- 排除哪些插件不需要缩进
    filetype_exclude = {
        "dashboard",
    },
})
