local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  -- You can "comment out" the line below after lazy.nvim is installed
  lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}

lazy.setup({
    {'folke/tokyonight.nvim'},
    {'nvim-lualine/lualine.nvim'},
    {'catppuccin/nvim', name = 'catppuccin'},
    {'nvim-treesitter/nvim-treesitter'},
    {'nvim-treesitter/nvim-treesitter-textobjects'},
    {'nvim-treesitter/nvim-treesitter-context'},
    {'numToStr/Comment.nvim'},
    {'tpope/vim-surround'},
    {'nvim-tree/nvim-tree.lua'},
    {'nvim-lua/plenary.nvim'},
    {'nvim-telescope/telescope.nvim'},
    {'tpope/vim-fugitive'},
    {'lewis6991/gitsigns.nvim'},
    {'akinsho/toggleterm.nvim'},
    {'AndrewRadev/tagalong.vim'},
    {'m4xshen/autoclose.nvim'},
    {'christoomey/vim-tmux-navigator'},
    {'theprimeagen/harpoon'},
    {'folke/todo-comments.nvim'},
    {'rose-pine/neovim', name = 'rose-pine'},

    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            {'neovim/nvim-lspconfig'},
            {
                'williamboman/mason.nvim',
                build = function()
                    pcall(vim.cmd, 'MasonUpdate')
                end,
            },
            {'williamboman/mason-lspconfig.nvim'},

            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
            {'jose-elias-alvarez/null-ls.nvim'},
            {'folke/trouble.nvim'},
            {'hrsh7th/cmp-path'},
            {'hrsh7th/cmp-buffer'},
            {'saadparwaiz1/cmp_luasnip'},
            {'rafamadriz/friendly-snippets'},
        }
    }
})

