vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.swapfile = false --dont use backups
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true  -- but have longe undo trees (forever)

vim.opt.incsearch = true -- highlight the search pattern

vim.opt.scrolloff = 8

vim.opt.termguicolors = true

vim.opt.updatetime = 50

vim.g.mapleader = ' '

