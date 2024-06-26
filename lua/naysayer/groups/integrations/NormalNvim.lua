local M = {}

function M.get()
	return {
		MarkdownTask = { fg = C.monokai_cyan, style = { "bold" } },
		MarkdownTodo = { fg = C.monokai_yellow, style = { "bold" } },
		MarkdownNote = { fg = C.monokai_red, style = { "bold" } },
		MarkdownSee = { fg = C.monokai_blue, style = { "bold" } },
		MarkdownCheck = { fg = C.green, style = { "bold" } },
		MarkdownURL = { fg = C.grey, style = { "bold" } },
		MarkdownExample = { fg = C.monokai_violet, style = { "bold" } },
	}
end

return M
