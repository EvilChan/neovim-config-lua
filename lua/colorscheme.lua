vim.o.background = "dark"

local colorscheme = "darkplus"

local status, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status then
    vim.notify("colorscheme: " .. colorscheme .. " 没有找到！")
    return
end
