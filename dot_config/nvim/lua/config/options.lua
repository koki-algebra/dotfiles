vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.number = true
opt.cursorline = true
opt.termguicolors = true
opt.signcolumn = "yes"

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

opt.wrap = false
opt.scrolloff = 8
opt.sidescrolloff = 8

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true

opt.splitbelow = true
opt.splitright = true

opt.swapfile = false
opt.backup = false
opt.undofile = true

opt.clipboard = "unnamedplus"
opt.mouse = "a"

opt.updatetime = 250
opt.timeoutlen = 300
