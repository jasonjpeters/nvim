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
				css = { "prettierd" },
				docker = { "prettierd" },
				html = { "prettierd" },
				javascript = { "prettierd" },
				javascriptreact = { "prettierd" },
				jsonc = { "fixjson" },
				json = { "fixjson" },
				lua = { "stylua" },
				markdown = { "prettierd" },
				php = { "pint" },
				sh = { "shfmt" },
				vue = { "prettierd" },
				yaml = { "prettierd" },
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
