return {
	'nvim-tree/nvim-tree.lua',
	dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
	lazy = false,
	config = function ()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugins =1

		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=None]])

		require('nvim-tree').setup({
			view = {
				width = 30,
			},
			renderer = {
				indent_markers = {
					enable = true,
				},
			},
			filters = {
				dotfiles = false,
				custom = {
					'.DS_Store',
				},
			},
			git = {
				ignore = false,
			},
		})

		local mk = require('utils.keymapper').mapkey

		mk('n', '<leader>ee', '<cmd>NvimTreeToggle<cr>', 'Toggle nvim tree.')
		mk('n', '<leader>ef', '<cmd>NvimTreeFindFileToggle<cr>', 'Toggle nvim tree find file.')
		mk('n', '<leader>er', '<cmd>NvimTreeRefresh<cr>', 'Refresh nvim tree.')
	end,
}
