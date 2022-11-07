local keyset = vim.keymap.set

-- LEADEUR
vim.g.mapleader = ';'

-- basic
keyset('i', 'jk', '<esc>')
keyset('v', 'jk', '<esc>')
keyset('i', '<C-u>', '<esc>viwU')
keyset('n', 'q', 'b')

-- nomal
keyset('n', '<C-q>', ':q<CR>')
keyset('n', '<C-s>', ':w<CR>')

-- insert module up down left right
-- keyset('i', '<C-h>', '<Left>')
-- keyset('i', '<C-j>', '<Down>')
-- keyset('i', '<C-k>', '<Up>')
-- keyset('i', '<C-l>', '<Right>')

-- window
keyset('n', '<A-h>', '<C-w>h')
keyset('n', '<A-j>', '<C-w>j')
keyset('n', '<A-k>', '<C-w>k')
keyset('n', '<A-l>', '<C-w>l')
