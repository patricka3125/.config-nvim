return {
	{
		"NeogitOrg/neogit",
		lazy = true,
		dependencies = {
			"nvim-lua/plenary.nvim",
			"sindrets/diffview.nvim",
			"nvim-telescope/telescope.nvim",
		},
		cmd = "Neogit",
		keys = {
			{ "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" },
		},
		config = function()
			local hl = vim.api.nvim_set_hl

			-- Added lines (Green)
			hl(0, "NeogitDiffAdd", { fg = "#a7c080", bg = "#333c30" })
			hl(0, "NeogitDiffAddHighlight", { fg = "#d7ffaf", bg = "#3d4839", bold = true })

			-- Removed lines (Red) - for a consistent look
			hl(0, "NeogitDiffDelete", { fg = "#e67e80", bg = "#3c3431" })
			hl(0, "NeogitDiffDeleteHighlight", { fg = "#e67e80", bg = "#4c3733", bold = true })
		end,
	},
}
