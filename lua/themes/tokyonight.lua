return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	enabled = true,
	config = function()
		require("tokyonight").setup({
			style = "night",
			light_style = "night",
			terminal_colors = true,
		})

		vim.cmd("colorscheme tokyonight")
	end,
}
