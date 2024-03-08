return {
	"projekt0n/github-nvim-theme",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
		s,
	},
	lazy = false,
	priority = 1000,
	config = function()
		require("github-theme").setup({})

		vim.cmd("colorscheme github_dark_tritanopia")
	end,
}
