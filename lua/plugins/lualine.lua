return {
	"nvim-lualine/lualine.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	lazy = false,
	config = function()
		local lazy_status = require("lazy.status")

		local function harpoon_component()
			local harpoon = require("harpoon.mark")
			local total_marks = harpoon.get_length()

			if total_marks == 0 then
				return ""
			end

			local current_mark = "-"
			local mark_idx = harpoon.get_current_index()

			if mark_idx ~= nil then
				current_mark = tostring(mark_idx)
			end

			return string.format("󱡅 %s/%d", current_mark, total_marks)
		end

		require("lualine").setup({
			options = {
				theme = "github_dark_tritanopia",
				globalstatus = true,
				icons_enabled = true,
				always_divid_middle = true,
				component_separators = {
					left = "",
					right = "",
				},
				section_separators = {
					left = "",
					right = "",
				},
			},
			tabline = {
				lualine_a = { "tabs" },
				lualine_b = { "windows" },
				lualine_c = {},
				lualine_x = {},
				lualine_y = { "buffers" },
				lualine_z = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
					},
				},
			},
			winbar = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			inactive_winbar = {
				lualine_a = { "filename" },
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { "filename", "branch", "diff" },
				lualine_c = { "diagnostics" },
				lualine_x = { "encoding", "fileformat", "filetype" },
				lualine_y = {},
				lualine_z = { "location", "progress" },
			},
			inactive_sections = {
				lualine_a = {},
				lualine_b = {},
				lualine_c = {},
				lualine_x = {},
				lualine_y = {},
				lualine_z = {},
			},
		})
	end,
}
