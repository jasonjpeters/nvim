return {
	"akinsho/toggleterm.nvim",
	version = "*",
	lazy = false,
	config = function()
        require("toggleterm").setup({
            open_mapping = [[<C-\>]],
            start_in_insert = true,
            close_on_exit = true,
            hide_numbers = true,
            direction = "horizontal",
            size = 15,
            persist_size = true,
            shade_filetypes = {},
            shade_terminals = false, 
            shading_factor = 0.1,
            insert_mappings = false,
            terminal_mappings = true,
        })

        local mk = require("utils.keymapper").mapkey
        local terminal = require("toggleterm.terminal").Terminal

        function _G.set_terminal_keymaps()
            mk("t", "<Esc><Esc>", [[<C-\><C-n>]], "Return to normal mode.")
        end

        vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
	end,
}
