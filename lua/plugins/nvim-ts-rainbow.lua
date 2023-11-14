return {
	"mrjones2014/nvim-ts-rainbow",
	lazy = false,
	config = function()
		require("nvim-treesitter.configs").setup({
			rainbow = {
				enable = true,
			},
		})
	end,
}
