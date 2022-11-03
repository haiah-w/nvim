require'FTerm'.setup({
    border = 'double',
    dimensions  = {
        height = 0.7,
        width = 0.6,
    },
    cmd = os.getenv('bash')
})

-- Example keybindings
vim.keymap.set('n', '<A-t>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<A-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')

--local fterm = require("FTerm")
--
--local gitui = fterm:new({
--        ft = 'fterm_gitui',
--        cmd =  'gitui',
--        dimensions = {
--                height = 0.7,
--                width = 0.6,
--        }
--})
--vim.keymap.set('n', '<A-g>', function()
--        gitui.toggle()
--end)
