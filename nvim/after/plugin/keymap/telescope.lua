local Remap = require("jakobschlichting.keymap")
local nnoremap = Remap.nnoremap

-- Open Telescope
nnoremap("<C-p>", ":Telescope<CR>")

nnoremap("<leader>gs", function()
    require("telescope.builtin").grep_string({ search = vim.fn.input("Grep for > ")})
end)

-- TODO: Add further keybinds here
