require("toggleterm").setup()

local keyset = vim.keymap.set

-- open new terminal
keyset('n', '<A-t>', ':ToggleTerm<CR>')

-- tnoremap mode
keyset('t', '<esc>', '<C-\\><C-n>')
keyset('t', '<A-t>', 'exit<CR>')

-- switch window
keyset('t', '<A-h>', '<C-\\><C-N><C-w>h')
keyset('t', '<A-j>', '<C-\\><C-N><C-w>j')
keyset('t', '<A-k>', '<C-\\><C-N><C-w>k')
keyset('t', '<A-l>', '<C-\\><C-N><C-w>l')
