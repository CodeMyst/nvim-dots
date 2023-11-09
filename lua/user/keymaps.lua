vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>w', '<cmd>write<cr>', { desc = 'Save' })
vim.keymap.set({'n', 'x'}, 'cy', '"+y', { desc = 'Copy to system' })
vim.keymap.set({'n', 'x'}, 'cp', '"+p', { desc = 'Paste from system' })
vim.keymap.set('n', '<leader>a', ':keepjumps normal! ggVG<cr>', { desc = 'Select all' })
vim.keymap.set({'n', 'x'}, 'x', '"_x' , { desc = 'Delete without editing registers' })
vim.keymap.set('n', '<leader>e', '<cmd>NvimTreeToggle<cr>', { desc = 'Toggle nvim-tree' })

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

vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set('n', '<leader><space>', '<cmd>Telescope buffers<cr>')
vim.keymap.set('n', '<leader>?', '<cmd>Telescope oldfiles<cr>')
vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
vim.keymap.set('n', '<leader>fg', '<cmd>Telescope live_grep<cr>')
vim.keymap.set('n', '<leader>fd', '<cmd>Telescope diagnostics<cr>')
vim.keymap.set('n', '<leader>fs', '<cmd>Telescope current_buffer_fuzzy_find<cr>')
vim.keymap.set('n', '<leader>fo', '<cmd>Telescope lsp_document_symbols<cr>')
vim.keymap.set('n', '<leader>gs', '<cmd>Telescope git_status<cr>')

vim.keymap.set('n', 'ga', '<cmd>lua vim.lsp.buf.code_action()<cr>')
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
vim.keymap.set('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()()<cr>')
vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()()<cr>')

vim.keymap.set('n', '<C-h>', '<cmd>TmuxNavigateLeft<cr>')
vim.keymap.set('n', '<C-l>', '<cmd>TmuxNavigateRight<cr>')
vim.keymap.set('n', '<C-j>', '<cmd>TmuxNavigateDown<cr>')
vim.keymap.set('n', '<C-k>', '<cmd>TmuxNavigateUp<cr>')

-- restore the session for the current directory
vim.keymap.set("n", "<leader>qs", [[<cmd>lua require("persistence").load()<cr>]], {})

-- restore the last session
vim.keymap.set("n", "<leader>ql", [[<cmd>lua require("persistence").load({ last = true })<cr>]], {})

-- stop Persistence => session won't be saved on exit
vim.keymap.set("n", "<leader>qd", [[<cmd>lua require("persistence").stop()<cr>]], {})

