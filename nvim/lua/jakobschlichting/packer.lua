return require("packer").startup(function()
    -- Manage the manager
    use("wbthomason/packer.nvim")

    -- Colorscheme and Theme
    use("gruvbox-community/gruvbox")
    use("folke/tokyonight.nvim")

    -- fuzzy finder
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

end)
