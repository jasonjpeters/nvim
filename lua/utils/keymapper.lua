local nvim_modes = {
	n = "n", -- normal
	i = "i", -- insert
	v = "v", -- visual
	x = "x", -- visual block
	t = "t", -- terminal
	c = "c", -- command
}

local default_opts = {
	noremap = true,
	silent = true,
}

--- @param opts (table|nil)
--- @return table
local get_opts = function(opts)
	local all_opts = opts

	if all_opts == nil then
		all_opts = {}
	end

	for k, v in pairs(default_opts) do
		all_opts[k] = all_opts[k] or v
	end

	return all_opts
end

--- @param nvimmode (string|nil)
--- @return string
local get_mode = function(nvimmode)
	local modeString = nvim_modes[nvimmode]

	if modeString == nil then
		return "n"
	else
		return modeString
	end
end

--- @param nvimmode (string|nil)
--- @param keymaps string String
--- @param command string String
--- @param desc (string|nil)
--- @param options (table|nil)
--- @return nil
local mapkey = function(nvimmode, keymaps, command, desc, options)
	local mode = get_mode(nvimmode)
	local lhs = keymaps
	local rhs = command
	local opts = get_opts(options)

	if desc ~= nil then
		opts.desc = desc
	end

	vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

return { mapkey = mapkey }
