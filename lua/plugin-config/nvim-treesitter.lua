local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("没有找到 nvim-treesitter")
    return
end

treesitter.setup({
    -- 安装 Language parser
    -- :TSInstallInfo 命令查看支持的语言
    ensure_installed = {
        "css",
        "html",
        "javascript",
        "json",
        "jsonc",
        "lua",
        "rust",
        "solidity",
        "toml",
        "tsx",
        "typescript",
        "vim",
        "vue",
        "yaml",
    },
    -- 启用代码高亮功能
    highlight = {
        enable = true,
    },

    -- rainbow
    rainbow = {
        enable = true,
        extended_mode = true,
        max_files_lines = nil,
        colors = {
            "#95ca60",
            "#ee6985",
            "#D6A760",
            "#7794f4",
            "#b38bf5",
            "#7cc7fe",
        },
    },
})
