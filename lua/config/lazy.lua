local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
    vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end

vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    { import = 'themes' },
    { import = 'plugins' },
}, {
    defaults = {
        lazy = true,
        version = false,
    },
    checker = {
        enabled = true,
    },
    change_detection = {
        notify = false,
    },
    ui = {
        size = {
            width = 1,
            height = 1,
        },
        border = 'none',
    },
    performance = {
        cache = true,
        rtp = {
            disabled_plugins = {
                'gzip',
                'matchit',
                'matchparen',
                'netrwPlugin',
                'tarPlugin',
                'tohtml',
                'tutor',
                'zipPlugin',
            },
        },
    },
})
