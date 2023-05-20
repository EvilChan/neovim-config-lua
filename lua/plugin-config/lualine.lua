local status, lualine = pcall(require, "lualine")
if not status then
    vim.notify("没有找到 lualine")
    return
end

-- 使用增强状态栏后不再需要vim的模式提示
vim.o.showmode = false

lualine.setup({
    options = {
        -- 设置主题
        theme = 'darkplus',
        -- component_separators: 分段中不同组件之间的分隔符
        component_separators = {
            left = "|",
            right = "|",
        },
        -- section_separators: 区间分隔符
        section_separators = {
            left = " ",
            right = "",
        },
        globalstatus = true,
    },
    extensions = { "nvim-tree" },
    sections = {
        lualine_c = {
            "filename",
        },
        lualine_x = {
            "filesize",
            {
                "fileformat",
                symbols = {
                    unix = "LF",
                    dos = "CRLF",
                    mac = "CR",
                },
            },
            "encoding",
            "filetype",
        },
    }
})
