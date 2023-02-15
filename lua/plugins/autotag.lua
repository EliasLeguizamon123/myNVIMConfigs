require('nvim-ts-autotag').setup({
 	autotag = {
		enable = true,
		filetypes = { "html" , "xml", "jsx", "tsx", "javascript", "typescript", "javascriptreact", "typescriptreact", "vue", "svelte", "markdown" },
	},
  	skip_tags = {"br", "img", "link", "meta", "source"},
})
