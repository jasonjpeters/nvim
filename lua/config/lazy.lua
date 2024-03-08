local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{ import = "themes" },
	{ import = "plugins" },
}, {
	defaults = {
		lazy = false,
		version = false,
	},
	checker = {
		enabled = true,
	},
	change_detection = {
		notify = false,
	},
	performance = {
		cache = true,
		rtp = {
			disabled_plugins = {
				"gzip",
				"matchit",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
	ui = {
		size = {
			width = 1,
			height = 1,
		},
		border = "none",
	},
})
