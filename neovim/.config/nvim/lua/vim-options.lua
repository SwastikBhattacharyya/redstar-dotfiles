-- Tabs and Spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Line Numbers
vim.cmd("set relativenumber")

-- Buffers
vim.keymap.set("n", "H", "<CMD>bprevious<CR>")
vim.keymap.set("n", "L", "<CMD>bnext<CR>")
vim.keymap.set("n", "C", "<CMD>bdelete<CR>")

-- Set mapleader
vim.g.mapleader = " "

-- Neovide
vim.g.neovide_transparency = 0.8

-- Keymaps
vim.keymap.set('n', '<C-v>', '"+p', { remap = true })

