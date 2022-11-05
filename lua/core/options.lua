-- basic
vim.cmd('syntax on')
vim.cmd('filetype plugin indent on')
vim.opt.number         = true
vim.opt.relativenumber = true
vim.opt.numberwidth    = 4
vim.opt.termguicolors  = true
vim.opt.termguicolors  = true
vim.opt.shiftround     = true
vim.opt.updatetime     = 100
vim.opt.smartcase      = true
-- vim.opt.cursorline     = true
vim.opt.autowrite      = true
if (vim.fn.has('termguicolors') == 1) then
    vim.opt.termguicolors = true
end
-- tabs
vim.opt.autoindent    = true
vim.opt.smartindent   = true
vim.opt.tabstop       = 4
vim.opt.shiftwidth    = 4
vim.opt.softtabstop   = 4
vim.opt.mouse         = 'a'
vim.opt.expandtab     = true
vim.opt.autowrite     = false
vim.opt.formatoptions = ''

vim.opt.splitbelow = true
vim.opt.splitright = true

vim.opt.termguicolors = true
vim.opt.wrap = false

vim.opt.mouse = "a"
