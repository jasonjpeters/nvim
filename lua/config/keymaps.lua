local mk = require("utils.keymapper").mapkey

vim.g.mapleader = " "
vim.g.maplocalleader = " "

--- Reload configuration
mk("n", "<leader>rr", "<cmd>source ~/.config/nvim/init.lua<cr>", "Reload nvim configuration.")

--- Tab generation and navigation
mk("n", "<leader>tt", "<cmd>tabnew%<cr>", "New tab with current buffer.")
mk("n", "<leader>tn", "<cmd>tabnew<cr>", "New tab with empty buffer.")
mk("n", "<leader>tx", "<cmd>tabclose<cr>", "Close tab.")

mk("n", "<Tab>", "<cmd>tabnext<cr>", "Next tab.")
mk("n", "<S-Tab>", "<cmd>tabprevious<cr>", "Previous tab.")

--- Buffer generation and navigation
mk("n", "<leader>bn", "<cmd>enew<cr>", "New empty buffer.")
mk("n", "<leader>bv", "<cmd>vnew<cr>", "New empty buffer (vertical).")
mk("n", "<leader>bh", "<cmd>new<cr>", "New empty buffer (horizontal).")

mk("n", "<C-c>", "<cmd>bd!<cr>", "Close buffer.")
mk("n", "<C-b>", "<cmd>bnext<cr>", "Next buffer.")
mk("n", "<C-S-b>", "<cmd>bprevious<cr>", "Previous buffer.")

--- Split generation and navigation.
mk("n", "<leader>sv", "<cmd>vsplit<cr>", "Split with current buffer (vertical).")
mk("n", "<leader>sh", "<cmd>split<cr>", "Split with current buffer (horizontal).")

mk("n", "<C-h>", "<C-w>h", "Select split left.")
mk("n", "<C-l>", "<C-w>l", "Select split right.")
mk("n", "<C-j>", "<C-w>j", "Select split down.")
mk("n", "<C-k>", "<C-w>k", "Select split up.")

mk("n", "<C-Left>", "<C-w>h", "Select split left.")
mk("n", "<C-Down>", "<C-w>j", "Select split down.")
mk("n", "<C-Right>", "<C-w>l", "Select split right.")
mk("n", "<C-Up>", "<C-w>k", "Select split up.")

mk("n", "<C-S-h>", "<cmd>vertical resize +3<cr>", "Resize split left.")
mk("n", "<C-S-l>", "<cmd>vertical resize +3<cr>", "Resize split right.")
mk("n", "<C-S-j>", "<cmd>horizontal resize -3<cr>", "Resize split down.")
mk("n", "<C-S-k>", "<cmd>horizontal resize +3<cr>", "Resize split up.")

mk("n", "<C-S-Left>", "<cmd>vertical resize +3<cr>", "Resize split left.")
mk("n", "<C-S-Right>", "<cmd>vertical resize +3<cr>", "Resize split right.")
mk("n", "<C-S-Down>", "<cmd>horizontal resize -3<cr>", "Resize split down.")
mk("n", "<C-S-Up>", "<cmd>horizontal resize +3<cr>", "Resize split up.")

--- Move line(s)
mk("n", "<S-A-Up>", "<cmd>m -2<cr>", "Move up.")
mk("n", "<S-A-Down>", "<cmd>m +1<cr>", "Move down.")
