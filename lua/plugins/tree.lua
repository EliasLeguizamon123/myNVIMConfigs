
require('nvim-tree').setup({
	sort_by = "case_sensitive",
	view = {
		width = 30,
		mappings = {
			{ key = "b", action = "dir_up" }
		}
	},
})
