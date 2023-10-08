return require('packer').startup(function(use)
   use {
       'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use 'norcalli/nvim-colorizer.lua'
    use 'tpope/vim-commentary'
    use 'theprimeagen/harpoon'
    use 'wbthomason/packer.nvim'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons'}
    }
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use('mbbill/undotree')

	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {

			-- LSP Support
            -- DEVASLIFE
            {'jose-elias-alvarez/null-ls.nvim'},
            {'glepnir/lspsaga.nvim'},
			{'neovim/nvim-lspconfig'},

            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},
			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-buffer'},
            {'hrsh7th/cmp-path'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},
            --Snippets
			{'L3MON4D3/LuaSnip'},
            {'rafamadriz/friendly-snippets'},
            {'saadparwaiz1/cmp_luasnip'},
		}
	}
end)
