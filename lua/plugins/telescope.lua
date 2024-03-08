return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
		"nvim-telescope/telescope-file-browser.nvim",
		"debugloop/telescope-undo.nvim",
	},
	lazy = false,
	config = function()
		local telescope = require("telescope")
		local action = require("telescope.actions")

		telescope.setup({
			defaults = {
				extension = {
					undo = {},
				},
				sorting_strategy = "ascending",
				layout_strategy = "bottom_pane",
				layout_config = {
					height = 100,
					width = 100,
					prompt_position = "bottom",
				},
				border = true,
				borderchars = {
					prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
					results = { " " },
					preview = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
				},
			},
			mapping = {
				i = {},
			},
		})

		telescope.load_extension("fzf")
		telescope.load_extension("file_browser")
		telescope.load_extension("undo")

		local nnoremap = require("utils.keymapper").nnoremap
		nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffer." })
		nnoremap("<leader>fc", "<cmd>Telescope commands<cr>", { desc = "Find available commands." })
		nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files." })
		nnoremap("<leader>fg", "<cmd>Telescope grep_string<cr>", { desc = "Find string in current working tree." })
		nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>", { desc = "Find help tags." })
		nnoremap("<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find keymap." })
		nnoremap("<leader>fl", "<cmd>Telescope live_grep<cr>", { desc = "Find in current working directory." })
		nnoremap("<leader>fn", "<cmd>Telescope notify<cr>", { desc = "Find notification." })
		nnoremap("<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Find previously open file." })

		-- ext: undo
		nnoremap("<leader>fu", "<cmd>Telescope undo<cr>", { desc = "Find undo." })

		-- ext: file_browser
		nnoremap("<leader>f\\", "<cmd>Telescope file_browser<cr>", { desc = "File browser." })
	end,
}
