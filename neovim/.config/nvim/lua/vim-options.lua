-- Tabs and Spaces
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")

-- Set mapleader
vim.g.mapleader = " "

-- Neovide
vim.g.neovide_transparency = 0.8

-- Keymaps
vim.keymap.set('n', '<C-v>', '"+p', { remap = true })

