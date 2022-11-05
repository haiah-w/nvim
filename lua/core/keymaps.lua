-- basic
vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('v', 'jk', '<esc>')
vim.keymap.set('i', '<C-u>', '<esc>viwU')
vim.keymap.set('n', '<C-n>', ':noh<CR>')
vim.keymap.set('n', 'q', 'b')

-- nomal
vim.keymap.set('n', '<C-s>', ':w<CR>gg=G')
vim.keymap.set('n', '<C-q>', ':q<CR>')

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


vim.keymap.set('n', '<A-i>', '<cmd>bp<cr>')
vim.keymap.set('n', '<A-o>', '<cmd>bn<cr>')

-- LEADEUR
vim.g.mapleader=';'

