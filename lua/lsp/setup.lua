local status, mason = pcall(require, "mason")
if not status then
    vim.notify("没有找到 mason")
    return
end

mason.setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
        },
    },
})

local status_mason_lspconfig, mason_lspconfig = pcall(require, "mason-lspconfig")
if not status_mason_lspconfig then
    vim.notify("没有找到 mason-lspconfig")
    return
end

-- https://github.com/williamboman/mason-lspconfig.nvim
mason_lspconfig.setup({
    ensure_installed = {
        "cssls",
        "eslint",
        "html",
        "jsonls",
        "lua_ls",
        "solidity_ls_nomicfoundation",
        "rust_analyzer",
        "tailwindcss",
        "tsserver",
        "volar",
        "yamlls",
    },
    automatic_installation = true,
})

local status_lspconfig, lspconfig = pcall(require, "lspconfig")
if not status_lspconfig then
    vim.notify("没有找到 lspconfig")
    return
end

mason_lspconfig.setup_handlers({
    function(server_name)
        -- 激活LSP语言服务器
        require("lspconfig")[server_name].setup {}
    end,
    ["lua_ls"] = function()
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        })
    end,
})
