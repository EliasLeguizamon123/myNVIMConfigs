local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then 
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim' -- packer
	use 'shaunsingh/nord.nvim' -- theme
	use 'nvim-tree/nvim-tree.lua' -- tree left view
	use { "SmiteshP/nvim-navic", requires = "neovim/nvim-lspconfig" } -- tabs up
	use 'romgrk/barbar.nvim'  -- tabs up
	use 'yamatsum/nvim-cursorline' -- mark similar words
	use {
	  'goolord/alpha-nvim',
	  requires = { 'nvim-tree/nvim-web-devicons' },
    }
	use 'nvim-lua/plenary.nvim' -- Common utilities
	use 'onsails/lspkind-nvim' -- vscode-like pictograms
	use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
	use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
	use 'hrsh7th/nvim-cmp' -- Completion
	use 'neovim/nvim-lspconfig' -- LSP
	use 'L3MON4D3/LuaSnip' -- Snippet engine
	use 'm4xshen/autoclose.nvim'  -- Auto close [] {} '' ""
	use 'nvim-tree/nvim-web-devicons' -- Icons
	use 'pluffie/neoproj' -- Open projects
	use 'windwp/nvim-ts-autotag' -- Auto close tags
	use 'nvim-treesitter/nvim-treesitter' -- treesitter
	use 'jose-elias-alvarez/null-ls.nvim' -- LSP diagnostics
	use 'lukas-reineke/indent-blankline.nvim' -- Indent blanklines
	use 'NvChad/nvim-colorizer.lua' -- add color to #HEXA
	use "rafamadriz/friendly-snippets" -- for more snippets
	use 'AckslD/swenv.nvim' -- Switch python venvs
	use { 
        'glepnir/lspsaga.nvim',    -- LSP UI for different functionalities
        branch = 'main',
        requires = 'nvim-tree/nvim-web-devicons'
    }
	use {
  		'nvim-telescope/telescope.nvim', tag = '0.1.1',
  		requires = { {'nvim-lua/plenary.nvim'} }
	} -- telescope for find files
	use {
 		'm-demare/hlargs.nvim', -- Highlight arguments, definitions and usages
  		requires = { 'nvim-treesitter/nvim-treesitter' },
		config = function()
			require('hlargs').setup()
		end
	}
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use {
        	'nvim-telescope/telescope-file-browser.nvim', -- File manipulation
        	requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    	}
	use({
    	'CosmicNvim/cosmic-ui',
    	requires = { 'MunifTanjim/nui.nvim', 'nvim-lua/plenary.nvim' }
  	})
	--use({
	--	"utilyre/barbecue.nvim",
	--	tag = "*",
	--	requires = {
	--			"SmiteshP/nvim-navic",
	--			"nvim-tree/nvim-web-devicons", -- optional dependency
	--	},
	--	config = function()
	--		require("barbecue").setup()
	--	end,
	--})
end)
