return {
	'projekt0n/github-nvim-theme',
	lazy = false,
	enabled = true,
	priority = 1000,
	config = function()
		require('github-theme').setup({})
		vim.cmd('colorscheme github_dark_tritanopia')
	end,
}

