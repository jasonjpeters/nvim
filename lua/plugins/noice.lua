return {
	"folke/noice.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	event = "VeryLazy",
	config = function()
		require("telescope").load_extension("noice")

		require("noice").setup({
			lsp = {
				override = {
					["vim.lsp.util.convert_input_to_markdown_lines"] = true,
					["vim.lsp.util.stylize_markdown"] = true,
					["cmp.entry.get_documentation"] = true,
				},
			},
			presets = {
				bottom_search = true,
				command_palette = true,
				long_message_to_split = true,
				inc_rename = false,
				lsp_doc_border = false,
			},
			routes = {
				{
					view = "notify",
					filter = {
						event = "msg_showmode",
					},
				},
			},
			cmdline = {
				view = "cmdline_popup",
				format = {
					cmdline = {
						pattern = "^:",
						icon = ">_",
						lang = "vim",
						title = "",
					},
				},
			},
			views = {
				cmdline_popup = {
					position = {
						row = "80%",
						col = "50%",
					},
					size = {
						height = "auto",
						width = "70%",
					},
					border = {
						style = "single",
						padding = { 1, 1 },
					},
				},
				filter_options = {},
				win_options = {
					winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
				},
			},
		})
	end,
}
