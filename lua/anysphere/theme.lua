local colors = require("anysphere/colors")

local common = {
	-- Editor
	Normal = { fg = colors.fg, bg = colors.bg },
	NormalFloat = { bg = colors.bg },

	-- Cursor
	Cursor = { fg = colors.bg, bg = colors.fg },
	CursorColumn = { bg = colors.bg },

	-- Line numbers and signs
	ColorColumn = { bg = colors.bg },
	CursorLineNr = { fg = colors.fg, bg = colors.bg },
	LineNr = { fg = colors.dark_gray, bg = colors.bg },
	SignColumn = { bg = colors.bg },

	-- UI elements
	Pmenu = { bg = colors.bg },
	PmenuSel = { fg = colors.fg, bg = colors.select_bg },
	Visual = { bg = colors.highlight },
	CursorLine = { bg = colors.highlight },
	Search = { bg = colors.highlight },
	IncSearch = { bg = colors.highlight },

	VertSplit = { fg = colors.border },
	WinSeparator = { fg = colors.border },
	FloatBorder = { fg = colors.border },

	-- Syntax highlighting
	Keyword = { fg = colors.keyword, italic = true },
	Function = { fg = colors.func, bold = true },
	Identifier = { fg = colors.variable },
	String = { fg = colors.string },
	Comment = { fg = colors.comment },
	Type = { fg = colors.property },
	Special = { fg = colors.decorator },
	Statement = { fg = colors.keyword },
	Constant = { fg = colors.variable },
	Exception = { fg = colors.exception },
	Parameter = { fg = colors.parameter, italic = true },
	["@function.call"] = { fg = colors.func_call },
	["@parameter"] = { fg = colors.parameter, italic = true },
	["@property"] = { fg = colors.property },
	["@variable"] = { fg = colors.variable },
	["@keyword.async"] = { fg = colors.async_keyword, italic = true },
}

local Theme = {
	common = common,
}

function Theme.set_highlights(highlights)
	for group, value in pairs(highlights) do
		vim.api.nvim_set_hl(0, group, value)
	end
end

return Theme
