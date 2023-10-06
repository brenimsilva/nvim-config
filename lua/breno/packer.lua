return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- ### STYLE ###
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use {
        'svrana/neosolarized.nvim',
        requires = { 'tjdevries/colorbuddy.nvim' }
    }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use 'norcalli/nvim-colorizer.lua'
    use 'tpope/vim-commentary'

    -- ### NAVIGATION ###
    use 'theprimeagen/harpoon'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = {{'nvim-lua/plenary.nvim'}}
    }

    -- ### CODE HELPERS ###
    use 'windwp/nvim-autopairs'
    use 'windwp/nvim-ts-autotag'
    use('mbbill/undotree')

    use 'neovim/nvim-lspconfig'
    use 'onsails/lspkind-nvim'
    use 'williamboman/mason.nvim'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'jose-elias-alvarez/null-ls.nvim'
    use 'williamboman/mason-lspconfig.nvim'
    use 'nvimdev/lspsaga.nvim'
	--use {
	--	'VonHeikemen/lsp-zero.nvim',
	--	requires = {
	--		-- LSP Support
            --{'jose-elias-alvarez/null-ls.nvim'},
            --{'glepnir/lspsaga.nvim'},
	--		{'neovim/nvim-lspconfig'},

            --{'williamboman/mason.nvim'},
            --{'williamboman/mason-lspconfig.nvim'},
	--		-- Autocompletion
	--		{'hrsh7th/nvim-cmp'},
            --{'hrsh7th/cmp-buffer'},
            --{'hrsh7th/cmp-path'},
	--		{'hrsh7th/cmp-nvim-lsp'},
	--		{'hrsh7th/cmp-nvim-lua'},
            ----Snippets
	--		{'L3MON4D3/LuaSnip'},
            --{'rafamadriz/friendly-snippets'},
            --{'saadparwaiz1/cmp_luasnip'},
	--	}
	-- }
end)
