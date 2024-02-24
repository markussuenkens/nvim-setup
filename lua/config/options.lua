local opt = vim.opt

opt.number = true
opt.relativenumber = true

opt.mouse = "a"
-- opt.guicursor = "" -- fat cursor in insert mode

opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

opt.wrap = false
opt.breakindent = true -- preserve indentation of a virtual line (visible when wrap is enabled)
opt.autoindent = true

opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.expandtab = false 

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.scrolloff = 8
opt.signcolumn = "yes"

opt.updatetime = 50
