require("harpoon").setup({
    menu = {
        width = vim.api.nvim_win_get_width(0) - 20,
    }
})

local mark = require('harpoon.mark')
local ui = require('harpoon.ui')

vim.keymap.set('n', '<leader>a', mark.add_file)
vim.keymap.set('n', '<leader>h', ui.toggle_quick_menu)
