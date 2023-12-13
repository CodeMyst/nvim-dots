require('nvim-treesitter.configs').setup({
    highlight = {
        enable = true,
    },

    endwise = {
        enable = true,
    },

    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
            },
        },
    },
})

require('treesitter-context').setup({
    mode = 'topline',
})
