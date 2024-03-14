return {
    'nvim-lualine/lualine.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons',
    },
    lazy = false,
    config = function()
        local lazy_status = require 'lazy.status'

        require('lualine').setup {
            options = {
                theme = vim.g.colors_name,
                globalstatus = true,
                icons_enabled = true,
                always_divide_middle = true,
                component_separators = {
                    left = '',
                    right = '',
                },
                section_separators = {
                    left = '',
                    right = '',
                },
            },
            tabline = {
                lualine_a = { 'tabs' },
                lualine_b = { 'windows' },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { 'buffers' },
                lualine_z = {
                    {
                        lazy_status.updates,
                        cond = lazy_status.has_updates,
                    },
                },
            },
            winbar = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            inactive_winbar = {
                lualine_a = { 'filename' },
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
            sections = {
                lualine_a = { 'mode' },
                lualine_b = { 'filename', 'branch', 'diff' },
                lualine_c = { 'diagnostics' },
                lualine_x = { 'encoding', 'fileformat', 'filetype' },
                lualine_y = {},
                lualine_z = { 'location', 'progress' },
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {},
                lualine_x = {},
                lualine_y = {},
                lualine_z = {},
            },
        }
    end,
}
