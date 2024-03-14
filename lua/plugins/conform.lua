return {
    'stevearc/conform.nvim',
    lazy = false,
    config = function()
        require('conform').setup {
            notify_on_error = false,
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
            formatters_by_ft = {
                lua = { 'stylua' },
                javascript = { { 'prettierd', 'prettier' } },
                php = { { 'pint', 'php-cs-fixer' } },
                bash = { 'shfmt' },
                shell = { 'shfmt' },
                json = { 'fixjson' },
            },
        }
    end,
}
