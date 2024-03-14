return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    event = 'VimEnter',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope.nvim',
    },
    config = function()
        local harpoon = require 'harpoon'

        harpoon.setup {}

        local conf = require('telescope.config').values
        local function toggle_telescope(harpoon_files)
            local file_paths = {}

            for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
            end

            require('telescope.pickers')
                .new({}, {
                    prompt_title = 'Harpoon',
                    finder = require('telescope.finders').new_table {
                        results = file_paths,
                    },
                    previewer = conf.file_previewer {},
                    sorter = conf.generic_sorter {},
                })
                :find()
        end

        local nnoremap = require('utils.keymapper').nnoremap
        nnoremap('<leader>hh', function()
            toggle_telescope(harpoon:list())
        end, { desc = 'Toggle harpoon.' })
        nnoremap('<leader>hp', function()
            harpoon:list():prepend()
        end, { desc = 'Prepend buffer to harpoon list.' })
        nnoremap('<leader>ha', function()
            harpoon:list():append()
        end, { desc = 'Append buffer to harpoon list.' })
        nnoremap('<leader>hr', function()
            harpoon:list():remove()
        end, { desc = 'Remove buffer from harpoon list.' })
        nnoremap('<c-s-h>', function()
            harpoon:list():prev()
        end, { desc = 'Harpoon previous.' })
        nnoremap('<c-h>', function()
            harpoon:list():next()
        end, { desc = 'Harpoon next.' })
        nnoremap('<leader>1', function()
            harpoon:list():select(1)
        end, { desc = 'Harpoon [1]' })
        nnoremap('<leader>2', function()
            harpoon:list():select(2)
        end, { desc = 'Harpoon [2]' })
        nnoremap('<leader>3', function()
            harpoon:list():select(3)
        end, { desc = 'Harpoon [3]' })
        nnoremap('<leader>4', function()
            harpoon:list():select(4)
        end, { desc = 'Harpoon [4]' })
        nnoremap('<leader>5', function()
            harpoon:list():select(5)
        end, { desc = 'Harpoon [5]' })
        nnoremap('<leader>6', function()
            harpoon:list():select(6)
        end, { desc = 'Harpoon [6]' })
        nnoremap('<leader>7', function()
            harpoon:list():select(7)
        end, { desc = 'Harpoon [7]' })
        nnoremap('<leader>8', function()
            harpoon:list():select(8)
        end, { desc = 'Harpoon [8]' })
        nnoremap('<leader>9', function()
            harpoon:list():select(9)
        end, { desc = 'Harpoon [9]' })
    end,
}
