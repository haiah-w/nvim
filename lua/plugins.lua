vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use 'ryanoasis/vim-devicons'

    ---------------------------------------nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        },
        tag = 'nightly'
    }
    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    ---------------------------------------bufferline/statusline
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
    use({
        'noib3/nvim-cokeline',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function()
            require('cokeline').setup()
        end
    })
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    ---------------------------------------coc.nvim
    use { 'neoclide/coc.nvim', branch = 'release', run = 'yarn install --frozen-lockfile' }
    use { 'fatih/vim-go' }
    use { 'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async' }
    use { 'jiangmiao/auto-pairs' } -- TODO: auto close
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
        config = function()
            -- you can configure Hop the way you like here; see :h hop-config
            require 'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
    }
    -- debuger
    use { "ravenxrz/DAPInstall.nvim" } -- help us install several debuggers
    use "ravenxrz/nvim-dap"
    use "theHamsta/nvim-dap-virtual-text"
    use "rcarriga/nvim-dap-ui"

    ---------------------------------------gitsigns
    use { 'lewis6991/gitsigns.nvim' }

    ---------------------------------------colors
    use 'NvChad/nvim-colorizer.lua'
    use 'xiyaowong/nvim-transparent'
    use { "ellisonleao/gruvbox.nvim" } --colorscheme

    ---------------------------------------dashboard | session manager
    use 'glepnir/dashboard-nvim'
    use {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("indent_blankline").setup { filetype_exclude = { "dashboard" }
            }
        end
    }
    use {
        'rmagatti/auto-session',
        config = function()
            require("auto-session").setup {
                log_level = "error",
                auto_session_suppress_dirs = { "~/code" },
                sections = { lualine_c = { require('auto-session-library').current_session_name } }
            }
        end
    }

    ---------------------------------------floaterm
    use 'voldikss/vim-floaterm'

    ---------------------------------------telescope
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    -- telescope live_grep require
    use { 'nvim-telescope/telescope-fzf-native.nvim',
        run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

    ---------------------------------------which key
    use {
        "folke/which-key.nvim",
        config = function()
            require("which-key").setup {}
        end
    }

    ---------------------------------------comment
    use {
        'numToStr/Comment.nvim',
        config = function()
            require('Comment').setup()
        end
    }
    -- for function signature
    use {
        "danymat/neogen",
        config = function()
            require('neogen').setup {}
        end,
        requires = "nvim-treesitter/nvim-treesitter",
    }

    ---------------------------------------todo comments
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup {}
        end
    }

end)
