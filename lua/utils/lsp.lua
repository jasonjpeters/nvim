
local M = {}

M.on_attach = function(client, bufnr)
	local opts = {
		noremap = true,
		silent = true,
		buffer = bufnr,
	}

    local mk = require("utils.keymapper").mapkey

    mk("n", "gR", "<cmd>Telescope lsp_references<cr>", 'Show LSP references.', opts)
    mk("n", "gD", vim.lsp.buf.declaration, 'Go to declaration.', opts)
    mk("n", "gd", "<cmd>Telescope lsp_definitions<cr>", 'Show LSP definitions.', opts)
    mk("n", "gi", "<cmd>Telescope lsp_implementations<cr>", 'Show LSP implementation.', opts)
    mk("n", "gt", "<cmd>Telescope lsp_type_definitions<cr>", 'Show LSP type definitions.', opts)
    mk('n', "<leader>ca", vim.lsp.buf.code_action, 'See available code actions.', opts)
    mk('v', "<leader>ca", vim.lsp.buf.code_action, 'See available code actions.', opts)
    mk("n", "<leader>rn", vim.lsp.buf.rename, 'Smart rename.', opts)
    mk("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<cr>", 'Show buffer diagnostics.', opts)
    mk("n", "<leader>d", vim.diagnostic.open_float, 'Show line diagnostics.', opts)
    mk("n", "[d", vim.diagnostic.goto_prev, 'Go to previous diagnostic.', opts)
    mk("n", "]d", vim.diagnostic.goto_next, 'Go to next diagnostic.', opts)
    mk("n", "K", vim.lsp.buf.hover, 'Show documentation for under cursor.', opts)
    mk("n", "<leader>rs", ":LspRestart<cr>", 'Restart LSP.', opts)
end

M.diagnostic_signs = {
	Error = " ",
	Warn = " ",
	Hint = "ﴞ ",
	Info = "",
}

return M
