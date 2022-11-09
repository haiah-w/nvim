local home = os.getenv("HOME")
local db = require("dashboard")
-- mac require
-- db.preview_command = "cat | lolcat -F 0.3"

-- linux require: python3 sudo pip install ueberzug
-- db.preview_command = "ueberzug"

db.preview_file_path = home .. "/.config/nvim/neovim.cat"
db.preview_file_height = 15
db.preview_file_width = 70
db.session_directory = home .. "/.config/nvim/sessions/"
db.custom_center = {
    {
        icon = "  ",
        desc = "Recently latest session        ",
        --shortcut = "",
        action = "SessionLoad",
    },
    -- {
    --   icon = "  ",
    --   desc = "Recently opened files                   ",
    --   action = "DashboardFindHistory",
    --   shortcut = "SPC f h",
    -- },
    {
        icon = "  ",
        desc = "Find  File                    ",
        action = "Telescope find_files find_command=rg,--hidden,--files",
        --shortcut = "<leader> s f",
    },
    {
        icon = "  ",
        desc = "File Browser                  ",
        action = "Telescope file_browser",
        --shortcut = "<leader> f b",
    },
    {
        icon = "  ",
        desc = "Find  word                    ",
        action = "Telescope live_grep",
        --shortcut = "<leader> s g",
    },
    {
        icon = "  ",
        desc = "Edit Configure file           ",
        action = "e ~/.config/nvim/",
        --shortcut = "<leader> f d",
    },
    {
        icon = "  ",
        desc = "Quit Neovim                   ",
        action = "qa!",
        --shortcut = "<C-q>  ",
    }
}
