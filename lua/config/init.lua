require "config.tree"
require "config.treesitter"
require "config.bufferline"
require "config.gitsigns"
require "config.terminal"
require "config.statusline"
require "config.telescope"
require "config.dashboard"
require "config.autosession"
require "config.whichkey"

local keyset = vim.keymap.set

----------------tree----------------
-- keymaps on tree
keyset('n', '<leader>e', ':NvimTreeToggle<cr>')
keyset('n', '<leader>fc', ':bd<CR>')

----------------buffer----------------
keyset('n', '<S-Tab>', '<Plug>(cokeline-focus-prev)', { silent = true })
keyset('n', '<Tab>', '<Plug>(cokeline-focus-next)', { silent = true })
keyset('n', '<Leader>p', '<Plug>(cokeline-switch-prev)', { silent = true })
keyset('n', '<Leader>n', '<Plug>(cokeline-switch-next)', { silent = true })
for i = 1, 9 do
    keyset('n', ('<leader>f%s'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), { silent = true })
    --keyset('n', ('<leader>f%s'):format(i), ('<Plug>(cokeline-switch-%s)'):format(i), { silent = true })
end

----------------terminal----------------
keyset('n', '<leader>tt', ':FloatermNew<CR>')
keyset({ 'n', 't' }, '<leader>tc', '<C-\\><C-n>:FloatermHide<CR>')

--------------telescope-----------------
local builtin = require('telescope.builtin')
keyset('n', '<leader>ff', builtin.find_files, {})
keyset('n', '<leader>fg', builtin.live_grep, {})
keyset('n', '<leader>fb', builtin.buffers, {})
keyset('n', '<leader>fh', builtin.help_tags, {})
