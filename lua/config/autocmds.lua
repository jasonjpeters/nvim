local fn = vim.fn
local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local nnoremap = require('utils.keymapper').nnoremap

-- Highlight yanking text
autocmd('TextYankPost', {
    desc = 'Highlight yanking text',
    group = augroup('highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

-- LSP Attach
autocmd('LspAttach', {
    group = augroup('lsp-attach', { clear = true }),
    callback = function(event)
        local builtin = require 'telescope.builtin'

        nnoremap('gd', builtin.lsp_definitions, { desc = 'LSP: Goto definitiion.' })
        nnoremap('gr', builtin.lsp_references, { desc = 'LSP: Goto references' })
        nnoremap('gI', builtin.lsp_implementations, { desc = 'LSP: Goto implementation' })
        nnoremap('<leader>D', builtin.lsp_type_definitions, { desc = 'LSP: Type definition' })
        nnoremap('<leader>ds', builtin.lsp_document_symbols, { desc = 'LSP: Document symbols' })
        nnoremap('<leader>ws', builtin.lsp_dynamic_workspace_symbols, { desc = 'LSP: Workspace symbols' })
        nnoremap('<leader>rn', vim.lsp.buf.rename, { desc = 'LSP: Rename' })
        nnoremap('<leader>ca', vim.lsp.buf.code_action, { desc = 'LSP: Code action' })
        nnoremap('K', vim.lsp.buf.hover, { desc = 'LSP: Hover Documentation' })
        nnoremap('gD', vim.lsp.buf.declaration, { desc = 'LSP: Goto declaration' })

        local client = vim.lsp.get_client_by_id(event.data.client_id)

        if client and client.server_capabilities.documentHighlightProvider then
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
                buffer = event.buf,
                callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
                buffer = event.buf,
                callback = vim.lsp.buf.clear_references,
            })
        end
    end,
})
