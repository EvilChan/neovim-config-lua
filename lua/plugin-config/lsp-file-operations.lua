local status, lsp_file_operations = pcall(require, "lsp-file-operations")
if not status then
    vim.notify("没有找到 lsp-file-operations")
    return
end

lsp_file_operations.setup({
    debug = false,
})
