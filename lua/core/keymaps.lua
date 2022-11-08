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
keyset({ 'i', 'n' }, '<C-h>', '<Left>')
keyset({ 'i', 'n' }, '<C-j>', '<Down>')
keyset({ 'i', 'n' }, '<C-k>', '<Up>')
keyset({ 'i', 'n' }, '<C-l>', '<Right>')

-- window
keyset('n', '<C-h>', '<C-w>h')
keyset('n', '<C-j>', '<C-w>j')
keyset('n', '<C-k>', '<C-w>k')
keyset('n', '<C-l>', '<C-w>l')

-- global
-- TODO close terminal fisrt then wqall
keyset('n', '<leader>qa', '<Cmd>:wqall<CR>')
