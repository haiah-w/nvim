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
require "config.comment"
require "config.todo-comments"
require "config.ufo"

local keyset = vim.keymap.set

----------------tree----------------
-- keymaps on tree
keyset('n', '<leader>ft', ':NvimTreeToggle<cr>')
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

----------------terminal: <leader>t----------------
-- :FloatermNew --height --width --wintype={'floating','normal'} --name --cmd
keyset('n', '<leader>tt', ':FloatermNew<CR>')
keyset('n', '<leader>tp', ':FloatermPrev<CR>')
keyset('n', '<leader>tn', ':FloatermNext<CR>')
keyset('n', '<leader>tg', ':FloatermNew --height=0.8 --width=0.8 --name=lazygit lazygit<CR>')
keyset({ 'n', 't' }, '<leader>th', '<C-\\><C-n>:FloatermHide<CR>')
keyset({ 'n', 't' }, '<leader>tk', '<C-\\><C-n>:FloatermKill<CR>')

--------------telescope: <leader>s-----------------
local builtin = require('telescope.builtin')
keyset('n', '<leader>sf', builtin.find_files, {})
keyset('n', '<leader>sg', builtin.live_grep, {})
keyset('n', '<leader>sb', builtin.buffers, {})
keyset('n', '<leader>sh', builtin.help_tags, {})

----------------Go: <leader>g-----------------
keyset('n', '<leader>gt', '<Cmd>:GoTestFunc<CR>')

---------------lsp mapping--------------
-- see coc.lua

---------------comment------------------
keyset('n', '<leader>cf', '<Cmd>:Neogen<CR>')
-- {'n','v'} line comment : gcc [you can always do gcc]
-- {'n','v'} block comment : gbc

---------------fold---------------------
--TODO more config in treesitter: 1. keep fold on startup. 2. fold color
-- za fold
-- zo unfold
keyset('n', 'zR', require('ufo').openAllFolds)
keyset('n', 'zM', require('ufo').closeAllFolds)
keyset('n', 'zm', require('ufo').closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
keyset('n', 'K', function()
    local winid = require('ufo').peekFoldedLinesUnderCursor()
    if not winid then
        -- choose one of coc.nvim and nvim lsp
        vim.fn.CocActionAsync('definitionHover') -- coc.nvim
        vim.lsp.buf.hover()
    end
end)
