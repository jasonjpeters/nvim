return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	config = function()
		require("neo-tree").setup({
			close_if_last_window = true,
			enable_git_status = true,
			enable_diagnostics = true,
			sort_case_insensitive = true,
			window = {
				position = "right",
				width = "40",
				mapping_options = {
					noremap = true,
					nowait = true,
				},
				mappings = {
					["<space>\\"] = {
						"close_window",
						nowait = false,
					},
				},
			},
			filesystem = {
				filtered_items = {
					hide_dotfiles = false,
					hide_by_name = {
						".git",
						"node_modules",
						"vendor",
					},
				},
			},
		})

		local nnoremap = require("utils.keymapper").nnoremap
		nnoremap("<leader>\\", "<cmd>Neotree ./<cr>", { desc = "Toggle Neotree" })
	end,
}
