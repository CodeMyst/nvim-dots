-- basic settings
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.wo.wrap = true
vim.opt.cursorline = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hlsearch = false
vim.opt.showmode = false
vim.opt.swapfile = false
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.opt.signcolumn = "yes"
vim.opt.hidden = true
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.list = true
vim.opt.laststatus = 3
vim.opt.pumheight = 10
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 4
vim.opt.sidescroll = 0
vim.opt.breakindent = true
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.virtualedit = 'block'
vim.opt.completeopt = 'longest,menuone'
vim.opt.list = true
vim.o.cmdheight = 0
vim.opt.guicursor = ""
vim.opt.smartcase = true
vim.opt.linebreak = true

vim.opt.listchars = {
    tab      = '→ ',
    nbsp     = '␣',
    trail    = '·',
}
vim.opt.fillchars = {
    fold      = '·',
    foldopen  = '',
    foldclose = '',
    foldsep   = ' ',
    diff      = '╱',
    eob       = ' ',
}

vim.g.loaded_2html_plugin      = 1
vim.g.loaded_gzip              = 1
vim.g.loaded_matchit           = 1
vim.g.loaded_tar               = 1
vim.g.loaded_tarPlugin         = 1
vim.g.loaded_tutor_mode_plugin = 1
vim.g.loaded_vimball           = 1
vim.g.loaded_vimballPlugin     = 1
vim.g.loaded_zip               = 1
vim.g.loaded_zipPlugin         = 1
-- vim.g.loaded_netrw             = 1
-- vim.g.loaded_netrwPlugin       = 1

vim.g.laststatus = 3

vim.filetype.add { extension = { jbuilder = 'ruby' } }
vim.filetype.add { extension = { jb = 'ruby' } }

-- basic mappings
vim.keymap.set("n", "<C-H>", "<C-W><C-H>")
vim.keymap.set("n", "<C-J>", "<C-W><C-J>")
vim.keymap.set("n", "<C-K>", "<C-W><C-K>")
vim.keymap.set("n", "<C-L>", "<C-W><C-L>")
vim.keymap.set("n", "<C-S>", ":%s/")
vim.keymap.set("n", "sp", ":sp<CR>")
vim.keymap.set("n", "vs", ":vs<CR>")
vim.keymap.set("n", "<leader>j", ":cnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>k", ":cprevious<CR>", { silent = true })
vim.keymap.set('n', '<leader>w', '<cmd>write<cr>')
vim.keymap.set({'n', 'x'}, 'cy', '"+y')
vim.keymap.set({'n', 'x'}, 'cp', '"+p')
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>')
vim.keymap.set({'n', 'x'}, 'x', '"_x')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set('v', "<", "<gv")
vim.keymap.set('v', ">", ">gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>tf', '<cmd>TestFile<cr><cr>')
vim.keymap.set('n', '<leader>tn', '<cmd>TestNear<cr><cr>')
vim.keymap.set('n', '<leader>rc', ':lua require("ror.commands").list_commands()<CR>', { silent = true })
vim.keymap.set('n', '<leader>rz', '<cmd>TermExec cmd="zig build run"<cr><cr>')

-- lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "tpope/vim-sleuth",

    "tpope/vim-rhubarb",
    "tpope/vim-fugitive",

    "kevinhwang91/nvim-bqf",

    {
        "windwp/nvim-ts-autotag",
        event = "VeryLazy",
    },

    "m4xshen/autoclose.nvim",

    {
        "RRethy/nvim-treesitter-endwise",
        event = "VeryLazy"
    },

    { "numToStr/Comment.nvim" },
    { "JoosepAlviste/nvim-ts-context-commentstring", event = "VeryLazy" },

    {
        "rose-pine/neovim",
        priority = 1000,
        lazy = false,
        config = function()
            require("rose-pine").setup({
                enable = {
                    terminal = true
                },

                styles = {
                    italic = false
                }
            })

            vim.cmd [[colorscheme rose-pine]]
        end,
    },

    -- {
    --     "rebelot/kanagawa.nvim",
    --     priority = 1000,
    --     lazy = false,
    --     config = function()
    --         require("kanagawa").setup({
    --             theme = "dragon",
    --             commentStyle = { italic = false },
    --             keywordStyle = { italic = false },
    --             overrides = function()
    --                 return {
    --                     ["@variable.builtin"] = { italic = false },
    --                 }
    --             end
    --         })
    --
    --         vim.cmd [[colorscheme kanagawa-dragon]]
    --     end,
    -- },

    {
        "neovim/nvim-lspconfig",
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
        },
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
        },
    },

    {
        "nvim-telescope/telescope.nvim",
        event = "VeryLazy",
        keys = {
            { "<leader><leader>", "<cmd>Telescope buffers<cr>" },
            { "<leader>ff", "<cmd>Telescope find_files<cr>" },
            { "<leader>fg", "<cmd>Telescope live_grep<cr>" },
            { "<leader>fr", "<cmd>Telescope resume<cr>" },
            { "<leader>fo", "<cmd>Telescope lsp_document_symbols<cr>" },
            { "<leader>fs", "<cmd>Telescope git_status<cr>" },
            { "<leader>fb", "<cmd>Telescope git_branches<cr>" },
        },
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
    },

    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        event = "VeryLazy",
        config = function()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                highlight = { enable = true },
                endwise = { enable = true },
                indent = { enable = false },
                autotag = { enable = true, enable_close_on_slash = false },
                matchup = { enable = true }
            })
        end,
    },

    {
        "kylechui/nvim-surround",
        event = "VeryLazy",
        opts = {},
    },

    {
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        opts = {
            disable_filetype = { "TelescopePrompt", "vim" },
        },
    },

    {
        "nvim-lualine/lualine.nvim",
        config = function()
            require("lualine").setup({
                options = {
                    icons_enabled = false,
                    sections = {
                        lualine_a = {'mode'},
                        lualine_b = {'branch', 'diff', 'diagnostics'},
                        lualine_c = {'filename'},
                        lualine_x = {'encoding', 'fileformat', 'filetype'},
                        lualine_y = {'progress'},
                        lualine_z = {'location'}
                    },
                    section_separators = '',
                    component_separators = '',
                }
            })
        end,
    },

    {
        "nvim-tree/nvim-tree.lua",
        event = "VeryLazy",
        config = function()
            require("nvim-tree").setup({
                hijack_cursor = false,
            })
        end,
    },

    {
        "lewis6991/gitsigns.nvim",
        config = function()
            require('gitsigns').setup({
                signs = {
                    add = { text = '+' },
                    change = { text = '~' },
                    delete = { text = '-' },
                },
            })
        end,
    },

    {
        "akinsho/toggleterm.nvim",
        event = "VeryLazy",
        config = function()
            require('toggleterm').setup({
                open_mapping = [[<c-\>]],
                hide_numbers = true,
                direction = 'horizontal',
                size = 20,
                shade_terminals = false,
            })
        end
    },

    {
        "klen/nvim-test",
        event = "VeryLazy",
        config = function()
            require('nvim-test').setup {
                term = 'toggleterm',
                runners = {
                    ruby = 'nvim-test.runners.rspec'
                }
            }

            require('nvim-test.runners.rspec'):setup {
                command = 'bundle exec rspec'
            }
        end
    },

    { 'andymass/vim-matchup' },

    {
        'weizheheng/ror.nvim',
        config = function ()
            require("ror").setup()
        end
    },

    {
      'stevearc/dressing.nvim',
      opts = {},
    },

    { "folke/zen-mode.nvim",
        config = function ()
            require('zen-mode').setup({
                window = {
                    width = 100
                }
            })
        end
    },
})

-- setup comment
require("Comment").setup({
    pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
})

-- setup mason
require("mason").setup()
require("mason-lspconfig").setup()

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup_handlers({
    function(server_name)
        require("lspconfig")[server_name].setup({
            capabilities = capabilities,
        })

        require("lspconfig").zls.setup({
            cmd = { "/Users/codemyst/code/zls/zig-out/bin/zls" }
        })
    end,
})

vim.diagnostic.config({virtual_text = false})

-- lsp mappings
vim.keymap.set("n", "<space>d", vim.diagnostic.open_float)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("UserLspConfig", {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, opts)
        vim.keymap.set({ "n", "v" }, "<space>.", vim.lsp.buf.code_action, opts)
        vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    end,
})

-- setup nvim-cmp
local cmp_autopairs = require("nvim-autopairs.completion.cmp")
local luasnip = require("luasnip")
local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
                luasnip.expand_or_jump()
            else
                fallback()
            end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
                luasnip.jump(-1)
            else
                fallback()
            end
        end, { "i", "s" }),
    }),
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "buffer" },
    },
})

cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())

-- fix node
local home_dir = vim.fn.expand("$HOME")
-- pin nvim to a specific node version, regardless of the project
local node_bin =  "/.asdf/installs/nodejs/18.16.0/bin"
vim.g.node_host_prog = home_dir .. node_bin .. "/node"
vim.cmd("let $PATH = '" .. home_dir .. node_bin .. ":' . $PATH")
