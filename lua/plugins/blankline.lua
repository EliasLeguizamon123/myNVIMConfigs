local opt = vim.opt
local cmd = vim.cmd

opt.termguicolors = true
opt.list = true
opt.listchars:append "eol:↴"
opt.listchars:append "space:⋅"

cmd [[highlight IndentBlanklineIndent1 guifg=#BF616A gui=nocombine]]
cmd [[highlight IndentBlanklineIndent2 guifg=#D08770 gui=nocombine]]
cmd [[highlight IndentBlanklineIndent3 guifg=#EBC8B gui=nocombine]]
cmd [[highlight IndentBlanklineIndent4 guifg=#A3BE8C gui=nocombine]]
cmd [[highlight IndentBlanklineIndent5 guifg=#B48EAD gui=nocombine]]
cmd [[highlight IndentBlanklineIndent6 guifg=#5E81AC gui=nocombine]]

require("indent_blankline").setup {
    show_current_context = true,
    show_current_context_start = true,
	space_char_blankline = " ",
	show_end_of_line = true,
	char_highlight_list = {
		"IndentBlanklineIndent1",
		"IndentBlanklineIndent2",
		"IndentBlanklineIndent3",
		"IndentBlanklineIndent4",
		"IndentBlanklineIndent5",
		"IndentBlanklineIndent6",
	},
}

