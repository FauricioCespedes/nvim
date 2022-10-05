-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use('wbthomason/packer.nvim')

    -- ThePrimeagen plugins
    use("ThePrimeagen/harpoon")

    -- telescope
    use("nvim-lua/plenary.nvim")
    use("nvim-lua/popup.nvim")
    use("nvim-telescope/telescope.nvim")

    -- treesitter
    use("nvim-treesitter/nvim-treesitter", {
        run = ":TSUpdate"
    })
    use("romgrk/nvim-treesitter-context")
    use("nvim-treesitter/nvim-treesitter-refactor")

    -- lsp
    use {
        "neovim/nvim-lspconfig",
        'hrsh7th/nvim-compe',
        "williamboman/nvim-lsp-installer",
    }

    -- completation
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-git",
			"hrsh7th/nvim-cmp",
			"hrsh7th/cmp-nvim-lsp-signature-help",
			"saadparwaiz1/cmp_luasnip",
			"onsails/lspkind-nvim",
			"L3MON4D3/LuaSnip",
			"windwp/nvim-autopairs",
		},
	})

    -- tpope plugins
    use("tpope/vim-surround")
    use("tpope/vim-fugitive")
    use("tpope/vim-commentary")
    use("tpope/vim-obsession")

    -- theme
    use('folke/tokyonight.nvim')

    -- lua line
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- transparent background
    use("xiyaowong/nvim-transparent")

    -- snippets
    use("rafamadriz/friendly-snippets")

    -- auto pairs
    use("jiangmiao/auto-pairs")

    -- polyglot
    use("sheerun/vim-polyglot")

    -- css colors
    use("brenoprata10/nvim-highlight-colors")

    -- emmet 
    use('mattn/emmet-vim')

    -- auto close tag
    use('alvan/vim-closetag')

end)
