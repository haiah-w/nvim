require "config.tree"
require "config.treesitter"
require "config.bufferline"
require "config.gitsigns"
require "config.terminal"
require "config.statusline"

local keyset = vim.keymap.set
----------------buffer----------------
keyset('n', '<S-Tab>', '<Plug>(cokeline-focus-prev)', { silent = true })
keyset('n', '<Tab>', '<Plug>(cokeline-focus-next)', { silent = true })
keyset('n', '<Leader>p', '<Plug>(cokeline-switch-prev)', { silent = true })
keyset('n', '<Leader>n', '<Plug>(cokeline-switch-next)', { silent = true })

for i = 1, 9 do
    keyset('n', ('<F%s>'):format(i), ('<Plug>(cokeline-focus-%s)'):format(i), { silent = true })
    keyset('n', ('<Leader>%s'):format(i), ('<Plug>(cokeline-switch-%s)'):format(i), { silent = true })
end

----------------terminal----------------
keyset('n', '<A-t>', '<Cmd>:ToggleTerm<CR>')
keyset('n', '<leader>t', '<Cmd>:ToggleTerm size=40 direction=float<CR>')
keyset("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })

keyset('t', '<esc>', [[<C-\><C-n>]], opts)
keyset('t', 'jk', [[<C-\><C-n>]], opts)
keyset('t', '<A-h>', [[<Cmd>wincmd h<CR>]], opts)
keyset('t', '<A-j>', [[<Cmd>wincmd j<CR>]], opts)
keyset('t', '<A-k>', [[<Cmd>wincmd k<CR>]], opts)
keyset('t', '<A-l>', [[<Cmd>wincmd l<CR>]], opts)

