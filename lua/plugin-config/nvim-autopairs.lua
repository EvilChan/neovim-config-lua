local status, nvim_autopairs = pcall(require, "nvim-autopairs")
if not status then
    vim.notify("没有找到 nvim-autopairs")
    return
end

nvim_autopairs.setup({
    check_ts = true,
    ts_config = {
        lua = { "string" },
        javascript = { "template_string" },
    },
})

-- If you want insert `(` after select function or method item
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local cmp = require("cmp")
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
