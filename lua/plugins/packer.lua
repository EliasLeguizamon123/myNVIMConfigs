local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then 
	packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'shaunsingh/nord.nvim'
	use 'nvim-tree/nvim-tree.lua'
	use { "SmiteshP/nvim-navic", requires = "neovim/nvim-lspconfig" }
	use 'romgrk/barbar.nvim'
	use 'yamatsum/nvim-cursorline'
	use 'glepnir/dashboard-nvim'
	use 'nvim-lua/plenary.nvim' -- Common utilities
    	use 'onsails/lspkind-nvim' -- vscode-like pictograms
    	use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words
    	use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
    	use 'hrsh7th/nvim-cmp' -- Completion
    	use 'neovim/nvim-lspconfig' -- LSP
    	use 'L3MON4D3/LuaSnip' -- Snippet engine
	use 'm4xshen/autoclose.nvim'
	use {
  		'nvim-lualine/lualine.nvim',
  		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use({
  		"utilyre/barbecue.nvim",
  		tag = "*",
  		requires = {
    			"SmiteshP/nvim-navic",
    			"nvim-tree/nvim-web-devicons", -- optional dependency
  		},
  		config = function()
			require("barbecue").setup()
  		end,
	})
end)
