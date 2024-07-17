-- Tabs and Spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Line Numbers
vim.cmd("set relativenumber")

-- Set mapleader
vim.g.mapleader = " "

-- Neovide
vim.g.neovide_transparency = 0.8

-- Keymaps
vim.keymap.set('n', '<C-v>', '"+p', { remap = true })

