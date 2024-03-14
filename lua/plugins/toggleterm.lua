return {
    'akinsho/toggleterm.nvim',
    version = '*',
    lazy = false,
    config = function()
        require('toggleterm').setup {
            open_mapping = [[<c-\>]],
            start_in_insert = true,
            close_on_exit = true,
            hide_numbers = true,
            direction = 'horizontal',
            size = 15,
            persist_size = true,
            shade_filetypes = {},
            shade_terminals = false,
            shading_factor = 0.1,
            insert_mappings = false,
            terminal_mappings = true,
        }

        function _G.set_terminal_keymaps()
            local tnoremap = require('utils.keymapper').tnoremap
            local opts = { desc = '', buffer = 0 }

            tnoremap('<esc>', [[<c-\><c-n>]], opts)
            tnoremap('jk', [[<c-\><c-n>]], opts)
            tnoremap('<c-h>', [[<cmd>wincmd h<cr>]], opts)
            tnoremap('<c-j>', [[<cmd>wincmd j<cr>]], opts)
            tnoremap('<c-k>', [[<cmd>wincmd k<cr>]], opts)
            tnoremap('<c-l>', [[<cmd>wincmd l<cr>]], opts)
            tnoremap('<c-w>', [[<c-\><c-n><c-w>]], opts)
        end

        vim.cmd 'autocmd! TermOpen term://* lua set_terminal_keymaps()'
    end,
}
