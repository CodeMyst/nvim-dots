vim.api.nvim_create_user_command('ReloadConfig', 'source ~/.config/nvim/init.lua', {})

local augroup = vim.api.nvim_create_augroup('user_cmds', { clear = true })

vim.api.nvim_create_autocmd('TextYankPost', {
    group = augroup,
    desc = 'Highlight on yank',
    callback = function()
        vim.highlight.on_yank({ higroup = 'Visual', timeout = 200 })
    end
})

