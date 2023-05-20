local status, db = pcall(require, "dashboard")
if not status then
    vim.notify("没有找到 dashboard")
    return
end

local version = vim.version()

db.setup({
    theme = 'doom',
    config = {
        header = {
            [[]],
            [[]],
            [[]],
            [[ ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗]],
            [[ ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║]],
            [[ ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║]],
            [[ ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║]],
            [[ ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║]],
            [[ ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝]],
            [[                                                   ]],
            [[                [ version : ]] ..
            tostring(version.api_compatible) .. "." ..
            tostring(version.minor) .. "." .. tostring(version.patch) .. [[ ]                ]],
            [[]],
            [[]],
            [[]],
        },
        center = {
            {
                icon = "  ",
                desc = "Projects                            ",
                action = "Telescope projects",
            },
            {
                icon = "  ",
                desc = "Recently files                      ",
                action = "Telescope oldfiles",
            },
            {
                icon = "  ",
                desc = "Edit keybindings                    ",
                action = "edit ~/.config/nvim/lua/keybindings.lua",
            },
            {
                icon = "  ",
                desc = "Edit Projects                       ",
                action = "edit ~/.local/share/nvim/project_nvim/project_history",
            },
        },
        footer = {
            "",
            "",
            "https://github.com/EvilChan/neovim-config-lua.git",
        },
    },
})
