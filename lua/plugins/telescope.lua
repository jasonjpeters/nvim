return {
    'nvim-telescope/telescope.nvim',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-tree/nvim-web-devicons',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
        },
    },
    lazy = false,
    config = function ()
        local telescope = require('telescope')
        local action = require('telescope.actions')

        telescope.setup({
            defaults = {
                path_display = { 'truncate' },
                mappings = {
                    i = {

                    },
                },
            },
        })

        telescope.load_extension('fzf')

        local mk = require('utils.keymapper').mapkey
        
        mk('n', '<leader>fb', '<cmd>Telescope buffers<cr>', 'Find buffer(s).')
        mk('n', '<leader>ff', '<cmd>Telescope find_files<cr>', 'Find file(s) in current working directory.')
        mk('n', '<leader>fg', '<cmd>Telescope grep_string<cr>', 'Find string in current working tree.')
        mk('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', 'Find help tag(s).')
        mk('n', '<leader>fk', '<cmd>Telescope keymaps<cr>', 'Find keymap(s).')
        mk('n', '<leader>fl', '<cmd>Telescope live_grep<cr>', 'Find string in current working directory.')
        mk('n', '<leader>fo', '<cmd>Telescope oldfiles<cr>', 'Find previously open file(s).')
        mk('n', '<leader>fc', '<cmd>Telescope commands<cr>', 'Find available command(s).')
    end,
}

