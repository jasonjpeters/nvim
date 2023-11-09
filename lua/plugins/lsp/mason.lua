return {
    'williamboman/mason.nvim',
    dependencies = {
        'williamboman/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
    },
    cmd = 'Mason',
    lazy = false,
    config = function ()
        local mason = require('mason')
        local mason_lspconfig = require('mason-lspconfig')
        local mason_tool_installer = require('mason-tool-installer')

        mason.setup({
            ui = {
                icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
                },
            },
        })

        --- language servers
        mason_lspconfig.setup({
            ensure_installed = {
                'cssls',
                'html',
                'lua_ls',
                'phpactor',
                'tailwindcss',
            },
            autormatic_installation = true,
        })

        -- linters and formatters
        mason_tool_installer.setup({
            ensure_installed = {
                'eslint_d',
                'prettier',
                'phpcs',
                'php-cs-fixer',
                'stylua',
            },
        })

    end,
}
