local colors = {
	-- Base colors
	bg = "#18181b", -- Background
	fg = "#d0d0dd", -- Default foreground text
	border = "#383838", -- Borders and lines
	highlight = "#3c3b3c", -- Highlight color
	dark_gray = "#3E3E3E",
	select_bg = "#2E2E2E",

	-- Syntax highlighting
	keyword = "#83D6C5", -- Keywords like 'raise', 'return', 'try', 'if' (italicized)
	async_keyword = "#82D2CE", -- 'async def' keywords
	func = "#EFB080", -- Function declarations (bold)
	func_call = "#EBC88D", -- Function calls
	string = "#E394DC", -- String literals
	comment = "#6D6D6D", -- Comments
	decorator = "#a8cc7c", -- Python decorators
	exception = "#AAA0FA", -- Exception classes like HTTPException
	variable = "#94C1FA", -- Variables
	parameter = "#d6d6dd", -- Function parameters (italicized)
	property = "#AA9BF5", -- Object properties/attributes
}

return colors
