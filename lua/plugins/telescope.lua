
local status, telescope = pcall(require, 'telescope')
if (not status) then return end

local actions = require('telescope.actions')
local builtin = require('telescope.builtin')

local function telescope_buffer_dir()
    return vim.fn.expand('%:p:h')
end 

local fb_actions = require 'telescope'.extensions.file_browser.actions

telescope.setup({
    defaults = {
        mappings = {
            n = {
                ["<esc>"] = actions.close
            },
        },
    },
    extensions = {
        file_browser = {
            hijack_netrw = true,
            mappings = {
                ["i"] = {
                    ["<C-w>"] = function() vim.cmd('normal vbd') end,
                },
                ["n"] = {
                    ["N"] = fb_actions.create,
                    ["h"] = fb_actions.goto_parent_dir,
                    ["/"] = function()
                        vim.cmd('startinsert')
                    end 
                },
            },
        },
    },
})

telescope.load_extension("file_browser")

vim.keymap.set('n', '<leader>ff',
    function()
        builtin.find_files({
            no_ignore = false,
            hidden = true
        })
    end 
)

vim.keymap.set('n', '<leader>fg', function()
    builtin.live_grep()
end)

vim.keymap.set('n', '<leader>fb', function()
    builtin.buffers()
end)

vim.keymap.set('n', '<leader>fh', function()
    builtin.help_tags()
end)

vim.keymap.set('n', '<leader>fr', function()
    builtin.resume()
end)

vim.keymap.set('n', 'sf', ":Telescope file_browser<CR>", { noremap = true })
