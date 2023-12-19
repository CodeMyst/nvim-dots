vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.showmode = false
vim.opt.undofile = true
vim.opt.termguicolors = true
vim.opt.updatetime = 50
vim.opt.cursorline = true
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.scrolloff = 4
vim.opt.sidescrolloff = 8
vim.opt.sidescroll = 0
vim.opt.smoothscroll = true
vim.opt.virtualedit = 'block'
vim.opt.completeopt = 'menuone'
vim.opt.signcolumn = "yes"
vim.opt.mousemoveevent = true
vim.cmd('colorscheme dragon')

vim.opt.gcr = {
  'i-c-ci-ve:blinkoff500-blinkon500-block-TermCursor',
  'n-v:block-Curosr/lCursor',
  'o:hor50-Curosr/lCursor',
  'r-cr:hor20-Curosr/lCursor',
}

vim.opt.diffopt:append('algorithm:histogram')

vim.opt.list = true
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

vim.g.laststatus = 3

vim.filetype.add { extension = { jbuilder = 'ruby' } }
vim.filetype.add { extension = { jb = 'ruby' } }

