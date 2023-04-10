local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Move to previous/next
map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
-- Re-order to previous/next
map('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
map('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)

--Close Actual Buffer
map('n', '<A-x>', '<Cmd>BufferClose<CR>', opts)
-- Close all but pinned dont
map('n', '<A-X>', '<Cmd>BufferCloseAllButPinned<CR>', opts)
-- Pin actual Buffer
map('n', '<A-p>', '<Cmd>BufferPin<CR>', opts)

-- Goto buffer in position
map('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
map('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
map('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
map('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
map('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
map('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
map('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
map('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
map('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
map('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)


require("bufferline").setup{
	auto_hide = true,
	tabpages = true,
	animation = true,
	custom_icon_colors = true,
	no_name_title = 'Inactive shit',
	icons = {

		pinned = {button = '󰐅', filename = true, separator = {right = ''}},
		inactive = {button = '󰅚'},
		modified = {button = ''},
		separator = {left = '', right = ''},
		diagnostics = {
			{enable = true, icon = 'FF'},
			{enable = true, icon = 'WR'},
			{enable = true, icon = 'IF'},
			{enable = true, icon = 'HT'},
		},
	}
}
