-- basic
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('v', 'jk', '<esc>')
vim.keymap.set('i', '<C-u>', '<esc>viwU')
vim.keymap.set('n', 'q', 'b')

-- nomal
vim.keymap.set('n', '<C-q>', ':bd<CR>')
vim.keymap.set('n', '<C-s>', ':w<CR>')

-- insert module up down left right
-- vim.keymap.set('i', '<C-h>', '<Left>')
-- vim.keymap.set('i', '<C-j>', '<Down>')
-- vim.keymap.set('i', '<C-k>', '<Up>')
-- vim.keymap.set('i', '<C-l>', '<Right>')

-- window
vim.keymap.set('n', '<A-h>', '<C-w>h')
vim.keymap.set('n', '<A-j>', '<C-w>j')
vim.keymap.set('n', '<A-k>', '<C-w>k')
vim.keymap.set('n', '<A-l>', '<C-w>l')


-- LEADEUR
vim.g.mapleader = ';'
