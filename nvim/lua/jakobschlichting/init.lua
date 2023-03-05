require('jakobschlichting.packer')
require('jakobschlichting.keymap')
require('jakobschlichting.vim-opts')
-- require('jakobschlichting.neogit')

local augroup = vim.api.nvim_create_augroup
JakobSchlichtingGroup = augroup('JakobSchlichting', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({
            higroup = 'IncSearch',
            timeout = 40,
        })
    end,
})

autocmd({"BufWritePre"}, {
    group = JakobSchlichtingGroup,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
