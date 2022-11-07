-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- keymaps on tree
vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>')

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
        adaptive_size = true,
        mappings = {
            list = {
                { key = "u", action = "dir_up" },
                { key = "l", action = "open" },
                { key = "q", action = "close" }, -- close tree
                { key = "W", action = "collapse_all" },
                { key = "E", action = "expand_all" },
                { key = "y", action = "copy_name" },
                { key = "Y", action = "copy_path" },
                { key = "Y", action = "copy_absolute_path" },
                { key = "<C-l>", action = "vsplit" },
                { key = "<C-j>", action = "split" },
                { key = "f", action = "live_filter" },
                { key = "F", action = "clear_live_filter" },
                { key = "p", action = "preview" },
            },
        },
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = false,
    },
})
