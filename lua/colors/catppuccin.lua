require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    compile_path = vim.fn.stdpath("cache") .. "/catppuccin",
    transparent_background = false,
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        treesitter = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
    highlight_overrides = {
        all = function(colors)
            return {
                NvimTreeNormal = { fg = colors.none },
                CmpBorder = { fg = "#3e4145" },
            }
        end,
        latte = function(latte)
            return {
                Normal = { fg = latte.base },
            }
        end,
        frappe = function(frappe)
            return {
                ["@comment"] = { fg = frappe.surface2, style = { "italic" } },
            }
        end,
        macchiato = function(macchiato)
            return {
                LineNr = { fg = macchiato.overlay1 },
            }
        end,
        mocha = function(mocha)
            return {
                Comment = { fg = mocha.flamingo },
            }
        end,
    },
})
