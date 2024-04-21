local M = {}

function M.get()
	return {
		-- colors
		OctoGrey = { fg = C.darkest_green },
		OctoBlue = { fg = C.monokai_blue },
		OctoGreen = { fg = C.green },
		OctoRed = { fg = C.monokai_red },
		OctoPurple = { fg = C.monokai_violet },
		OctoYellow = { fg = C.monokai_yellow },
		-- highlight groups
		OctoDirty = { link = "ErrorMsg" },
		OctoIssueTitle = { link = "PreProc" },
		OctoIssueId = { link = "Question" },
		OctoEmpty = { link = "Comment" },
		OctoFloat = { link = "NormalNC" },
		OctoDate = { link = "Comment" },
		OctoSymbol = { link = "Comment" },
		OctoTimelineItemHeading = { link = "Comment" },
		OctoDetailsLabel = { link = "Title" },
		OctoMissingDetails = { link = "Comment" },
		OctoDetailsValue = { link = "Identifier" },
		OctoDiffHunkPosition = { link = "NormalFloat" },
		OctoCommentLine = { link = "TabLineSel" },
		OctoViewer = { fg = C.darkest_green, bg = C.monokai_blue },
		OctoBubble = { fg = C.brown, bg = C.darkest_green },
		OctoBubbleGrey = { fg = C.brown, bg = C.darkest_green },
		OctoBubbleDelimiterGrey = { fg = C.darkest_green },
		OctoBubbleGreen = { fg = C.darkest_green, bg = C.green },
		OctoBubbleDelimiterGreen = { fg = C.green },
		OctoBubbleBlue = { fg = C.darkest_green, bg = C.monokai_blue },
		OctoBubbleDelimiterBlue = { fg = C.monokai_blue },
		OctoBubbleYellow = { fg = C.darkest_green, bg = C.monokai_yellow },
		OctoBubbleDelimiterYellow = { fg = C.monokai_yellow },
		OctoBubbleRed = { fg = C.darkest_green, bg = C.monokai_red },
		OctoBubbleDelimiterRed = { fg = C.monokai_red },
		OctoBubblePurple = { fg = C.darkest_green, bg = C.monokai_violet },
		OctoBubbleDelimiterPurple = { fg = C.monokai_violet },
		OctoUser = { link = "OctoBubble" },
		OctoUserViewer = { link = "OctoViewer" },
		OctoReaction = { link = "OctoBubble" },
		OctoReactionViewer = { link = "OctoViewer" },
		OctoPassingTest = { link = "OctoGreen" },
		OctoFailingTest = { link = "OctoRed" },
		OctoPullAdditions = { link = "OctoGreen" },
		OctoPullDeletions = { link = "OctoRed" },
		OctoPullModifications = { fg = C.monokai_orange },
		OctoStateOpen = { fg = C.green, bg = C.darkest_green },
		OctoStateOpenFloat = { fg = C.green, bg = C.darkest_green },
		OctoStateClosed = { fg = C.monokai_red, bg = C.darkest_green },
		OctoStateClosedFloat = { fg = C.monokai_red, bg = C.darkest_green },
		OctoStateMerged = { fg = C.monokai_violet, bg = C.darkest_green },
		OctoStateMergedFloat = { fg = C.monokai_violet, bg = C.darkest_green },
		OctoStatePending = { fg = C.monokai_orange, bg = C.darkest_green },
		OctoStatePendingFloat = { fg = C.monokai_orange, bg = C.darkest_green },
		OctoStateApproved = { link = "OctoStateOpen" },
		OctoStateApprovedFloat = { link = "OctoStateOpen" },
		OctoStateChangesRequested = { fg = C.monokai_magenta, bg = C.darkest_green },
		OctoStateChangesRequestedFloat = { fg = C.monokai_magenta, bg = C.darkest_green },
		OctoStateCommented = { link = "Normal" },
		OctoStateCommentedFloat = { link = "Normal" },
		OctoStateDismissed = { link = "OctoStateClosed" },
		OctoStateDismissedFloat = { link = "OctoStateClosed" },
		OctoStateSubmittedBubble = { link = "OctoBubbleGreen" },
		OctoFilePanelCounter = { fg = C.monokai_blue, style = { "bold" } },
		OctoFilePanelTitle = { fg = C.monokai_blue, style = { "bold" } },
		OctoNormalFront = { fg = C.brown },
		OctoYellowFloat = { fg = C.monokai_yellow, bg = C.darkest_green },
		OctoPurpleFloat = { fg = C.monokai_violet, bg = C.darkest_green },
		OctoRedFloat = { fg = C.monokai_red, bg = C.darkest_green },
		OctoGreenFloat = { fg = C.green, bg = C.darkest_green },
		OctoGreyFloat = { fg = C.brown, bg = C.darkest_green },
		OctoBlueFloat = { fg = C.monokai_blue, bg = C.darkest_green },
	}
end

return M
