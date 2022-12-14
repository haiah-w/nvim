-- examples for your init.lua
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
    return
end

local tree_cb = nvim_tree_config.nvim_tree_callback
-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

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
                { key = "F", action = "clear_live_filter" },
                { key = "p", action = "preview" },
                { key = { "<cr>", "l", "<2-leftmouse>" }, cb = tree_cb("edit") },
                { key = "v", cb = tree_cb("vsplit") },
                { key = "s", cb = tree_cb("split") },
                { key = "h", cb = tree_cb "close_node" },
                { key = "o", cb = tree_cb("system_open") },
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
