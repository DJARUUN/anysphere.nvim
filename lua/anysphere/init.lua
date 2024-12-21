local theme = require("anysphere.theme")

local Anysphere = {
	name = "anysphere",
	config = {
		italic_keywords = true,
		bold_functions = true,
	},
}

function Anysphere:load()
	vim.cmd.highlight("clear")
	vim.o.background = "dark"
	vim.o.termguicolors = true
	vim.g.colors_name = self.name
	self:set_colors()

	vim.cmd([[
        doautocmd ColorScheme
    ]])
end

local function process_config_boolean(self, config, key)
	if config[key] == nil then
		return
	end
	if type(config[key]) ~= "boolean" then
		error(
			string.format("Invalid type %s used in setup for config.%s! Expected type: boolean", type(config[key]), key)
		)
	end
	self.config[key] = config[key]
end

function Anysphere:setup(config)
	if config == nil then
		return
	end
	if type(config) ~= "table" then
		error(string.format("Invalid call of setup with config of type %s! config must be a table", type(config)))
	end
	process_config_boolean(self, config, "italic_keywords")
	process_config_boolean(self, config, "bold_functions")
end

function Anysphere:set_colors()
	-- Common highlights
	theme.set_highlights(theme.common)

	-- Set terminal colors
	if theme.set_terminal_colors then
		theme:set_terminal_colors()
	end

	-- Apply configuration options
	if not self.config.italic_keywords then
		theme.set_highlights({
			Keyword = { fg = theme.colors.keyword },
			["@keyword.async"] = { fg = theme.colors.async_keyword },
		})
	end

	if not self.config.bold_functions then
		theme.set_highlights({
			Function = { fg = theme.colors.func },
		})
	end
end

return Anysphere
