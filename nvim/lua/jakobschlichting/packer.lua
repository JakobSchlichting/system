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

    -- LSP stuff
    use("neovim/nvim-lspconfig")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/nvim-cmp")
    use("onsails/lspkind-nvim")
    use("nvim-lua/lsp_extensions.nvim")
    use("glepnir/lspsaga.nvim")
    use("simrat39/symbols-outline.nvim")

    -- Lua
    use("L3MON4D3/LuaSnip")
    use("saadparwaiz1/cmp_luasnip")
end)
