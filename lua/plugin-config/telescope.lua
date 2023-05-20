local status, telescope = pcall(require, "telescope")
if not status then
    vim.notify("没有找到 telescope")
    return
end

telescope.setup({
    defaults = {
        initial_mode = "insert",
        mappings = require("keybindings").telescopeList,
    },
    pickers = {
        find_files = {},
    },
    extensions = {
        ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
        }
    }
})

pcall(telescope.load_extension, "env")

pcall(telescope.load_extension, "ui-select")
