local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = false
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.numberwidth = 2
opt.cmdheight = 1
opt.cul = true

opt.termguicolors = true
opt.signcolumn = "yes"

--Indent
opt.list = true
vim.opt.listchars:append "space:⋅"
