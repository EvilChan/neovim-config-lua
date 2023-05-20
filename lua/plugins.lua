local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

local status, lazy = pcall(require, "lazy")
if not status then
    vim.notify("没有安装 lazy.nvim")
    return
end

lazy.setup({
    {
        "lunarvim/darkplus.nvim",
        config = function()
            -- 主题配置
            require("colorscheme")
        end
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
        },
        config = function()
            -- 文件管理器配置
            require("plugin-config.nvim-tree")
        end
    },
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            "moll/vim-bbye",
        },
        config = function()
            -- Tab配置
            require("plugin-config.bufferline")
        end
    },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons",
            opt = true,
        },
        config = function()
            -- 状态栏配置
            require("plugin-config.lualine")
        end
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        dependencies = "nvim-lua/plenary.nvim",
        config = function()
            -- 模糊搜索配置
            require("plugin-config.telescope")
        end
    },
    {
        "LinArcX/telescope-env.nvim",
        "nvim-telescope/telescope-ui-select.nvim",
    },
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            -- 启动页面配置
            require("plugin-config.dashboard")
        end,
        dependencies = { { 'nvim-tree/nvim-web-devicons' } }
    },
    {
        "ahmedkhalf/project.nvim",
        config = function()
            -- 项目文件列表配置
            require("plugin-config.project")
        end
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        config = function()
            -- 语法高亮配置
            require("plugin-config.nvim-treesitter")
        end
    },
    {
        "p00f/nvim-ts-rainbow",
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            -- 缩进线配置
            require("plugin-config.indent_blankline")
        end
    },
    -------------------- LSP ----------------------
    'editorconfig/editorconfig-vim',
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            -- LSP语言服务器管理配置
            -- 自动安装LSP语言管理配置
            -- LSP语言服务器配置
            require("lsp.setup")
        end
    },
    {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-nvim-lsp-signature-help",
    },
    {
        "hrsh7th/vim-vsnip",
        "hrsh7th/cmp-vsnip"
    },
    {
        "onsails/lspkind-nvim",
        "glepnir/lspsaga.nvim",
        event = "LspAttach",
        dependencies = {
            { "nvim-tree/nvim-web-devicons" },
            --Please make sure you install markdown and markdown_inline parser
            { "nvim-treesitter/nvim-treesitter" }
        }
    },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            -- 代码补全引擎配置
            require("lsp.nvim-cmp")
        end
    },
    {
        "jay-babu/mason-null-ls.nvim",
        event = { "BufReadPre", "BufNewFile" },
        dependencies = {
            "williamboman/mason.nvim",
            "jose-elias-alvarez/null-ls.nvim",
        },
        config = function()
            -- 代码格式化
            require("lsp.null-ls")
        end,
    },
    -------------------- better-support ----------------------
    {
        "akinsho/toggleterm.nvim",
        version = "*",
        config = function()
            require("plugin-config.toggleterm")
        end,
    },
    {
        "ur4ltz/surround.nvim",
        config = function()
            require("plugin-config.surround")
        end
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            require("plugin-config.comment")
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("plugin-config.nvim-autopairs")
        end,
    },
    {
        "antosha417/nvim-lsp-file-operations",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-tree.lua",
        },
        config = function()
            -- 文件追踪
            require("plugin-config.lsp-file-operations")
        end,
    },
    {
        "j-hui/fidget.nvim",
        config = function()
            -- lsp加载ui优化
            require("plugin-config.fidget")
        end
    },
})
