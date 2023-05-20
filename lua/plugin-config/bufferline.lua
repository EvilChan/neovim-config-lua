vim.o.termguicolors = true

local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("没有找到 bufferline")
    return
end

bufferline.setup({
    options = {
        -- 关闭 Tab 的命令
        close_command = "Bdelete! %d",
        right_mouse_command = "Bdelete! %d",
        -- 使用 nvim 内置 lsp
        diagnostics = "nvim_lsp",
        -- 自定义缓冲区指示符
        diagnostics_indicator = function(_, _, diagnostics_dict, _)
            local s = ''
            for e, n in pairs(diagnostics_dict) do
                local sym = e == "error" and " " or (e == "warning" and " " or "")
                s = s .. n .. sym
            end
            return s
        end,
        -- 左侧让出 nvim-tree 的位置
        offsets = { {
            filetype = "NvimTree",
            text = "File Explorer",
            highlight = "Directory",
            text_align = "left",
        } }
    }
})
