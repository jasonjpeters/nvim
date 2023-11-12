return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	cmd = "Mason",
	lazy = false,
	config = function()
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")
		local mason_tool_installer = require("mason-tool-installer")

		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})

		--- language servers
		mason_lspconfig.setup({
			ensure_installed = {
				"bashls",
				"dockerls",
				"emmet_ls",
				"html",
				"intelephense",
				"jsonls",
				"lua_ls",
				"tailwindcss",
				"volar",
			},
			autormatic_installation = true,
		})

		-- linters and formatters
		mason_tool_installer.setup({
			ensure_installed = {
				-- Linters
				"eslint_d",
				"luacheck",
				"phpstan",
				"shellcheck",

				-- Formatters
				"prettierd",
				-- 'phpcs',
				-- 'php-cs-fixer',
				"fixjson",
				"pint",
				"shfmt",
				"stylua",
			},
		})
	end,
}
