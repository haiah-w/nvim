-----------basic-----------
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
vim.opt.cursorline     = true
vim.opt.autowrite      = true
vim.opt.mouse          = "a"
if (vim.fn.has('termguicolors') == 1) then
    vim.opt.termguicolors = true
end

-----------tabs------------
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


-----------flod------------
vim.o.foldcolumn = '1' -- '0' is not bad
vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[eob: ,fold: ,foldopen:,foldsep: ,foldclose:]]
vim.g.foldmethod = expr
