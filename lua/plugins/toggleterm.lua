return {
	"akinsho/toggleterm.nvim",
	version = "*",
	lazy = false,
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<C-\>]],
			size = function(term)
				if term.direction == "horizontal" then
					return 15
				end

				if term.direction == "vertical" then
					return vim.o.columns * 0.4
				end

				return 15
			end,
			insert_mappings = false,
			terminal_mappins = true,
		})

		function _G.set_terminal_keymaps()
			local mk = require("utils.keymapper").mapkey

			mk("t", "<esc>", [[<C-\><C-n>]], "Return to normal mode.")
			mk("t", "jk", [[<C-\><C-n>]], "Return to normal mode.")
			mk("t", "<C-h>", [[<Cmd>wincmd h<CR>]], "Navigate left.")
			mk("t", "<C-j>", [[<Cmd>wincmd j<CR>]], "Navigate down.")
			mk("t", "<C-k>", [[<Cmd>wincmd k<CR>]], "Navigate up.")
			mk("t", "<C-l>", [[<Cmd>wincmd l<CR>]], "Navigate right.")
		end

		vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
	end,
}
