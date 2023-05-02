local remap = vim.keymap.set
local leader = vim.g.leader
local opt = vim.opt 

-- leader assign
leader = ','

-- plugins 
require('plugins/packer')
require('plugins/tokyonight')
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
require('plugins/null')
require('plugins/blankline')
require('plugins/swenv')
require('plugins/colorizer')
require('plugins/comment')
require('plugins/wilder')
require('plugins/coc')

-- opt configs
opt.relativenumber = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.autoindent = true
opt.ignorecase = true
opt.smartcase = true
opt.gdefault = true


-- shorcuts
-- save in ctrl + s
remap('n', '<C-s>', ':w<CR>', {noremap = true, silent = true})
-- move up with alt up
remap('n', '<A-Up>', ':m -2<CR>', {noremap = true, silent = true})
-- mode down with alt down
remap('n', '<A-Down>', ':m +1<CR>', {noremap = true, silent = true})
-- close on esc
remap('n', '<esc>', ':q!<CR>', {noremap = true, silent = true})
-- Indent
remap('n', '<TAB>', '>>', {noremap = true, silent = true})
-- Remove Indent
remap('n', '<S-TAB>', '<<', {noremap = true, silent = true})
-- copy
remap('n', '<C-c>', 'y', {noremap = true, silent = true})
-- paste
remap('n', '<C-v>', 'p', {noremap = true, silent = true})
-- cut
remap('n', '<C-x>', 'd', {noremap = true, silent = true})
-- delete word 
remap('i', '<C-H>', '<C-W>', {noremap = true, silent = true})
