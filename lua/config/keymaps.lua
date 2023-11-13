local mk = require("utils.keymapper").mapkey

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Reload configuration
mk("n", "<leader>rr", "<cmd>source ~/.config/nvim/init.lua<cr>", "Reload NeoVim configuration.")
