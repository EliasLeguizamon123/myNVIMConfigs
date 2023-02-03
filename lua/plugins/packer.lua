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
