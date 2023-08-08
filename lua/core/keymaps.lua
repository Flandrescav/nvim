vim.g.mapleader = " "

local keymap = vim.keymap
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")

keymap.set("n", "<leader>nh", ":nohl<CR>")

keymap.set("n", "j", [[v:count ? 'j' : 'gj']], { noremap = true, expr = true })
keymap.set("n", "k", [[v:count ? 'k' : 'gk']], { noremap = true, expr = true })

keymap.set("n", "W", ':w<cr>', { noremap = true, silent = true })
keymap.set("n", "Q", ':q!<cr>', { noremap = true, silent = true })

--Tabline
local opts = { noremap = true, silent = true }

keymap.set("n", "<A-[>", "<Cmd>BufferPrevious<CR>", opts)
keymap.set("n", "<A-]>", "<Cmd>BufferNext<CR>", opts)

keymap.set("n", "<A-{>", "<Cmd>BufferMovePrevious<CR>", opts)
keymap.set("n", "<A-}>", "<Cmd>BufferMoveNext<CR>", opts)

keymap.set("n", "<A-p>", "<Cmd>BufferPin<CR>", opts)
keymap.set("n", "<A-P>", "<Cmd>BufferPick<CR>", opts)

keymap.set("n", "<A-1>", "<Cmd>BufferGoto 1<CR>", opts)
keymap.set("n", "<A-2>", "<Cmd>BufferGoto 2<CR>", opts)
keymap.set("n", "<A-3>", "<Cmd>BufferGoto 3<CR>", opts)
keymap.set("n", "<A-4>", "<Cmd>BufferGoto 4<CR>", opts)
keymap.set("n", "<A-5>", "<Cmd>BufferGoto 5<CR>", opts)

keymap.set("n", "<A-q>", "<Cmd>BufferClose<CR>", opts)

--nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

keymap.set("n", "<leader>e", "<Cmd>NvimTreeFocus<CR>")

--telescope
--local builtin = require('telescope.builtin')

--keymap.set("n", "<leader>ff", builtin.find_files, {})
