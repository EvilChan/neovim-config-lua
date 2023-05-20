local status, project = pcall(require, "project_nvim")
if not status then
    vim.notify("没有找到 project_nvim")
    return
end

vim.g.nvim_tree_respect_buf_cwd = 1
project.setup({
    detection_methods = { "pattern" },
    patterns = {
        "Cargo.toml",
        "package.json",
        ".git",
        "README.md",
    },
})

local status_telescope, telescope = pcall(require, "telescope")
if not status_telescope then
    vim.notify("没有找到 telescope")
    return
end
pcall(telescope.load_extension, "projects")
