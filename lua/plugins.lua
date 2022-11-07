ua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- nvim-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

    -- bufferline
    use {'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons'}
    use({
        'noib3/nvim-cokeline',
        requires = 'kyazdani42/nvim-web-devicons', -- If you want devicons
        config = function()
            require('cokeline').setup()
        end
    })
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    -- use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
    -- use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    -- use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    -- use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    -- use 'L3MON4D3/LuaSnip' -- Snippets plugin

    -- coc.nvim
    use { 'neoclide/coc.nvim', branch = 'release' }

    -- gitsigns
    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
    }

    -- colors
    use "rafamadriz/neon"
    use 'NvChad/nvim-colorizer.lua' -- color for css
    use 'xiyaowong/nvim-transparent' -- background
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
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/"},
    }
  end
}
    -- terminal
    use 'voldikss/vim-floaterm'

    -- telescope search everything
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}
    -- todo comments
use {
  "folke/todo-comments.nvim",
  requires = "nvim-lua/plenary.nvim",
  config = function()
    require("todo-comments").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
end)
