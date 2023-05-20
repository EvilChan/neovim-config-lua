-- 在init.lua一开始就禁用netrw（强烈建议）
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("没有找到 nvim-tree")
    return
end

-- 设置termguidcolors以启用高亮显示组
vim.o.termguicolors = true

-- empty setup using defaults
nvim_tree.setup({
    -- 不显示 git 状态图标
    git = {
        enable = false
    },
    -- project-nvim 需要的配置
    sync_root_with_cwd = true,
    respect_buf_cwd = true,
    update_focused_file = {
        enable = true,
        update_root = true,
    },
    actions = {
        open_file = {
            -- 首次打开大小适配
            resize_window = true,
            -- 打开文件时关闭tree
            quit_on_open = false,
        },
    },
})

-- 关闭文件时自动关闭解决方案
