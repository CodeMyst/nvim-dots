local load = function(mod)
    package.loaded[mod] = nil
    require(mod)
end

load('user.plugins')
load('user.settings')
load('user.keymaps')
load('user.commands')

load('user.plugins.lualine')
load('user.plugins.catppuccin')
load('user.plugins.treesitter')
load('user.plugins.comment')
load('user.plugins.nvim-tree')
load('user.plugins.telescope')
load('user.plugins.gitsigns')
load('user.plugins.toggleterm')
load('user.plugins.lsp')
load('user.plugins.autoclose')
load('user.plugins.harpoon')
load('user.plugins.todo')

