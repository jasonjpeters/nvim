return {
    'nvim-telescope/telescope.nvim',
    event = 'VimEnter',
    branch = '0.1.x',
    dependencies = {
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            cond = function()
                return vim.fn.executable 'make' == 1
            end,
        },
        { 'nvim-tree/nvim-web-devicons' },
        { 'nvim-telescope/telescope-ui-select.nvim' },
        { 'nvim-telescope/telescope-file-browser.nvim' },
        { 'debugloop/telescope-undo.nvim' },
    },
    config = function()
        local telescope = require 'telescope'

        telescope.setup {
            defaults = {
                extension = {
                    undo = {},
                },
                sorting_strategy = 'ascending',
                layout_strategy = 'bottom_pane',
                layout_config = {
                    width = 100,
                    height = 100,
                    prompt_position = 'bottom',
                },
                border = true,
                borderchars = {
                    prompt = { '─', ' ', ' ', ' ', '─', '─', ' ', ' ' },
                    results = { ' ' },
                    preview = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
                },
            },
            mapping = {
                i = {},
            },
            extensions = {
                ['ui-select'] = {
                    require('telescope.themes').get_dropdown(),
                },
            },
        }

        telescope.load_extension 'fzf'
        telescope.load_extension 'file_browser'
        telescope.load_extension 'undo'

        local nnoremap = require('utils.keymapper').nnoremap
        local builtin = require 'telescope.builtin'

        nnoremap('<leader><leader>', builtin.buffers, { desc = 'Search existing buffers.' })
        nnoremap('<leader>s.', builtin.oldfiles, { desc = 'Search resent files.' })
        nnoremap('<leader>sc', builtin.commands, { desc = 'Search commands.' })
        nnoremap('<leader>sd', builtin.diagnostics, { desc = 'Search diagnostics.' })
        nnoremap('<leader>sf', builtin.find_files, { desc = 'Search files.' })
        nnoremap('<leader>sg', builtin.live_grep, { desc = 'Search by group.' })
        nnoremap('<leader>sh', builtin.help_tags, { desc = 'Search help.' })
        nnoremap('<leader>sk', builtin.keymaps, { desc = 'Search keymaps.' })
        nnoremap('<leader>sr', builtin.resume, { desc = 'Search resume.' })
        nnoremap('<leader>ss', builtin.builtin, { desc = 'Search select telescope.' })
        nnoremap('<leader>sw', builtin.grep_string, { desc = 'Search current word.' })

        -- ext: undo
        nnoremap('<leader>su', '<cmd>Telescope undo<cr>', { desc = 'Find undo.' })

        -- ext: file_browser
        nnoremap('<leader>f\\', '<cmd>Telescope file_browser<cr>', { desc = 'File browser.' })

        nnoremap('<leader>/', function()
            builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, { desc = 'Fuzzily search in current buffer.' })

        nnoremap('<leader>s/', function()
            builtin.live_grep {
                grep_open_files = true,
                prompt_title = 'Live grep in open files.',
            }
        end, { desc = 'Search in open files.' })

        nnoremap('<leader>sn', function()
            builtin.find_files { cwd = vim.fn.stdpath 'config' }
        end, { desc = 'Search neovim files.' })
    end,
}
