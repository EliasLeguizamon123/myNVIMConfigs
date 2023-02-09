require('plugins/packer')
require('plugins/nord')
require('plugins/tree')
require('plugins/navic')
require('plugins/barbar')
require('plugins/cursorline')
require('plugins/lspconfig')
require('plugins/lualine')
require('plugins/autoclose')
require('plugins/pluffie')
require('plugins/alpha')
require('plugins/telescope')

-- try basic conf
--vim.g.mapleader = ','

vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.gdefault = true


-- shorcuts
-- save in ctrl + s
vim.keymap.set('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})
-- move up with alt up
vim.keymap.set('n', '<A-Up>', ':m -2<CR>', {noremap = true, silent = true})
-- mode down with alt down
vim.keymap.set('n', '<A-Down>', ':m -1<CR>', {noremap = true, silent = true})
