
require('nvim-tree').setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
		mappings = {
			{ key = "b", action = "" }
		}
	},
})
--vim.api.nvim_set_keymap('n', '<leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
