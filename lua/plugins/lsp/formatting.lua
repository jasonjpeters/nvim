return {
	"stevearc/conform.nvim",
	lazy = true,
	event = {
		"BufReadPre",
		"BufNewFile",
	},
	config = function()
		local conform = require("conform")
		local format = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 1000,
		}

		conform.setup({
			formatters_by_ft = {
				css = { "prettier" },
				html = { "prettier" },
				javascript = { "prettier" },
				javascriptreact = { "prettier" },
				json = { "prettier" },
				lua = { "stylua" },
				markdown = { "prettier" },
				php = { "php-cs-fixer" },
				yaml = { "prettier" },
			},
			format_on_save = {
				lsp_fallback = format,
			},
		})

		vim.keymap.set({ "n", "v" }, "<leader>mp", function()
			conform.format(format)
		end, { desc = "Format file or range." })
	end,
}
