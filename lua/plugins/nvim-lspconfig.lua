return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/nvim-cmp",
		"williamboman/mason.nvim",
		"windwp/nvim-autopairs",
	},
	lazy = false,
	config = function()
		local lspconfig = require("lspconfig")
		local cmp_nvim_lsp = require("cmp_nvim_lsp")
		local capabilities = cmp_nvim_lsp.default_capabilities()
		local on_attach = require("utils.lsp").on_attach
		local signs = require("utils.lsp").diagnostic_signs

		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, {
				text = icon,
				texthl = hl,
				numhl = "",
			})
		end

		-- bashls
		lspconfig["bashls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = {
				"sh",
				"bash",
			},
		})

		-- dockerls
		lspconfig["dockerls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- emmet
		lspconfig["emmet_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			filetypes = {
				"html",
				"javascriptreact",
				"css",
				"sass",
				"scss",
				"less",
				"vue",
			},
		})

		-- html
		lspconfig["html"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- intelephense
		lspconfig["intelephense"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				intelephense = {
					stubs = {
						"bcmath",
						"bz2",
						"calendar",
						"Core",
						"curl",
					},
				},
			},
		})

		-- jsonls
		lspconfig["jsonls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- lua_ls
		lspconfig["lua_ls"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				Lua = {
					diagnostics = {
						globals = {
							"vim",
						},
						workspace = {
							library = {
								[vim.fn.expand("$VIMRUNTIME/lua")] = true,
								[vim.fn.stdpath("config") .. "/lua"] = true,
							},
						},
					},
				},
			},
		})

		-- tailwindcss
		lspconfig["tailwindcss"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})

		-- volar
		lspconfig["volar"].setup({
			capabilities = capabilities,
			on_attach = on_attach,
		})
	end,
}
