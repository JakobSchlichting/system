local builtin = require('telescope.builtin')
local telescope = require("telescope")
local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

telescope.setup {
  defaults = {
    mappings = {
      n = { ["<leader>pt"] = trouble.open_with_trouble },
    },
  },
}

vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

telescope.load_extension("git_worktree")
vim.keymap.set('n', '<leader>wt', telescope.extensions.git_worktree.git_worktrees())
vim.keymap.set('n', '<leader>wc', telescope.extensions.git_worktree.create_git_worktree())
