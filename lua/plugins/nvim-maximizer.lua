return {
	"szw/vim-maximizer",
	keys = {
		{ "<leader>mm", "<cmd>MaximizerToggle<cr>", desc = "Maximize/minimize splits." },
	},
	config = function()
		require("vim-maximizer").setup({})
	end,
}
