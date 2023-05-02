require("tokyonight").setup ({
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
  style="night",
  transparent = true,
	  styles = {
	comments = { italic = true },
	keywords = {},
	functions = { italic = true },
	strings = {},
	variables = { bold = true },
	  },
})

vim.cmd[[colorscheme tokyonight]]
