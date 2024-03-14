local map = require('utils.keymapper').map
local nmap = require('utils.keymapper').nmap
local nnoremap = require('utils.keymapper').nnoremap
local vnoremap = require('utils.keymapper').vnoremap
local xnoremap = require('utils.keymapper').xnoremap
local inoremap = require('utils.keymapper').inoremap
local tnoremap = require('utils.keymapper').tnoremap

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Buffer generation and navigation.
nnoremap('<leader>bn', '<cmd>enew<cr>', { desc = 'New empty buffer.' })
nnoremap('<leader>bv', '<cmd>vnew<cr>', { desc = 'New empty buffer vertical split.' })
nnoremap('<leader>bh', '<cmd>new<cr>', { desc = 'New empty buffer horizontal split.' })
nnoremap('<c-c>', '<cmd>bd!<cr>', { desc = 'Close buffer.' })
nnoremap('<c-b>', '<cmd>bnext<cr>', { desc = 'Next bufferr.' })
nnoremap('<c-s-b>', '<cmd>bprevious<cr>', { desc = 'Previous bufferr.' })

-- Tab generation and navigation
nnoremap('<leader>tn', '<cmd>tabnew<cr>', { desc = 'New tab with empty buffer.' })
nnoremap('<leader>tc', '<cmd>tabclose<cr>', { desc = 'Close tab.' })
nnoremap('<tab>', '<cmd>tabnext<cr>', { desc = 'Next tab.' })
nnoremap('<s-tab>', '<cmd>tabprevious<cr>', { desc = 'Previous tab.' })

-- Split generation and navigation.
nnoremap('<leader>sv', '<cmd>vsplit<cr>', { desc = 'Split vertical with current buffer.' })
nnoremap('<leader>sh', '<cmd>split<cr>', { desc = 'Split horizontal with current buffer.' })

nnoremap('<c-left>', '<c-w>h', { desc = 'Select split left.' })
nnoremap('<c-down>', '<c-w>j', { desc = 'Select split down.' })
nnoremap('<c-up>', '<c-w>k', { desc = 'Select split up.' })
nnoremap('<c-right>', '<c-w>l', { desc = 'Select split right.' })
nnoremap('<c-h>', '<c-w>h', { desc = 'Select split left.' })
nnoremap('<c-j>', '<c-w>j', { desc = 'Select split down.' })
nnoremap('<c-k>', '<c-w>k', { desc = 'Select split up.' })
nnoremap('<c-l>', '<c-w>l', { desc = 'Select split right.' })

nnoremap('<c-s-left>', '<cmd>vertical resize -3<cr>', { desc = 'Resize split left.' })
nnoremap('<c-s-down>', '<cmd>horizontal resize -3<cr>', { desc = 'Resize split down.' })
nnoremap('<c-s-up>', '<cmd>horizontal resize +3<cr>', { desc = 'Resize split up.' })
nnoremap('<c-s-right>', '<cmd>vertical resize +3<cr>', { desc = 'Resize split right.' })
nnoremap('<c-s-h>', '<cmd>vertical resize -3<cr>', { desc = 'Resize split left.' })
nnoremap('<c-s-j>', '<cmd>horizontal resize -3<cr>', { desc = 'Resize split down.' })
nnoremap('<c-s-k>', '<cmd>horizontal resize +3<cr>', { desc = 'Resize split up.' })
nnoremap('<c-s-l>', '<cmd>vertical resize +3<cr>', { desc = 'Resize split right.' })

-- Move lines.
nnoremap('<a-up>', '<cmd>m -2<cr>', { desc = 'Move up.' })
nnoremap('<a-down>', '<cmd>m +1<cr>', { desc = 'Move down.' })
nnoremap('<a-k>', '<cmd>m -2<cr>', { desc = 'Move up.' })
nnoremap('<a-j>', '<cmd>m +1<cr>', { desc = 'Move Down.' })
