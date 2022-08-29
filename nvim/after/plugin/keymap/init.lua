local Remap = require("jakobschlichting.keymap")
local nnoremap = Remap.nnoremap
local vnoremap = Remap.vnoremap
local inoremap = Remap.inoremap
local xnoremap = Remap.xnoremap
local nmap = Remap.nmap

-- Open file explorer
nnoremap("<leader>e", ":Ex<CR>")
