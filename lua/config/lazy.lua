local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"


if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({'git', 'clone', '--filter=blob:none', 'https://github.com/folke/lazy.nvim.git', '--branch=stable', lazypath})
end

vim.opt.rtp:prepend(lazypath)

-- Import configuration(s)
require("config.options")
require("config.keymaps")

require('lazy').setup({
	{ import = "plugins" },
	{ import = "plugins.colorschemes" },
}, {
	defaults = {
		lazy = true,
		version = false,
	},
	performance = {
		cache = true,
	},
	install = { colorscheme = { "github-nvim-theme" } },
	checker = { enabled = true },
	change_detection = { notify = false },
	rtp = {
		disabled_plugins = {
			"gzip",
			"matchit",
			"matchparen",
			"netrw",
			"netrwPlugin",
			"tarPlugin",
			"tohtml",
			"totor",
			"zipPlugin",
		},
	},
	ui = {
		size = {
			width = 0.9,
			height = 0.9,
		},
		border = "none",
	},
})

