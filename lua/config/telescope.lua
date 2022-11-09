local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
    return
end

local actions = require "telescope.actions"
-- only support linux
-- telescope.load_extension "media_files"
-- require('telescope').extensions.dap.configurations()
--
telescope.setup {
    defaults = {

        prompt_prefix = "> ",
        selection_caret = " ",
        -- path_display = { "smart" },
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                prompt_position = "bottom",
                preview_width = 0.55,
                results_width = 0.8,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.80,
            preview_cutoff = 120,
        },
        winblend = 0,
        mappings = {
            ["i"] = {
                -- close when i mode
                ["<esc>"] = require('telescope.actions').close,
                ["<C-k>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<C-j>"] = actions.toggle_selection + actions.move_selection_better,
            },
            ["n"] = {
                -- your custom normal mode mappings
                ["<esc>"] = require('telescope.actions').close,
                ["<C-k>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<C-j>"] = actions.toggle_selection + actions.move_selection_better,
            },
        },
    },
    pickers = {
        -- Default configuration for builtin pickers goes here:
        -- picker_name = {
        --   picker_config_key = value,
        --   ...
        -- }
        -- Now the picker_config_key will be applied every time you call this
        -- builtin picker
    },
    extensions = {
        --   media_files = {
        --     -- filetypes whitelist
        --     -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
        --     filetypes = { "png", "webp", "jpg", "jpeg" },
        --     find_cmd = "rg", -- find command (defaults to `fd`)
        --   },
        file_browser = {
            --theme = "ivy",
            mappings = {
                ["i"] = {
                    ["<C-k>"] = actions.toggle_selection + actions.move_selection_worse,
                    ["<C-j>"] = actions.toggle_selection + actions.move_selection_better,
                },
                ["n"] = {
                    -- your custom normal mode mappings
                    ["<C-k>"] = actions.toggle_selection + actions.move_selection_worse,
                    ["<C-j>"] = actions.toggle_selection + actions.move_selection_better,
                },
            },
        },
    },
}
--require("telescope").load_extension "fi
