local status, mason_null_ls = pcall(require, "mason-null-ls")
if not status then
    vim.notify("没有找到 mason-null-ls")
    return
end

-- local null_ls = require("null-ls")
-- local formatting = null_ls.builtins.formatting

mason_null_ls.setup({
    ensure_installed = {
        "stylua",
        "prettier",
    },
    automatic_installation = true,
    -- handlers = {
    --     function () end,
    --     stylua = function (source_name, methods)
    --         null_ls.register(formatting.stylua)
    --     end,
    -- },
})
