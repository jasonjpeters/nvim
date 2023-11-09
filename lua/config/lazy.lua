local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'

if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazypath})
end

vim.opt.rtp:prepend(lazypath)

require('config.keymaps')
require('config.options')

require('lazy').setup({
	{ import = 'plugins' },
	{ import = 'plugins.lsp' },
}, {
	defaults = {
		lazy = true,
		version = false,
	},
	install = { colorscheme = { 'github-nvim-theme' } },
	checker = { enabled = true },
	rtp = {
		disabled_plugins = {
			'gzip',
			'matchit',
			'matchparen',
			'netrw',
			'netrwPlugin',
			'tarPlugin',
			'tohtml',
			'totor',
			'zipPlugin',
		},
	},
	change_detection = { notify = false },
})
