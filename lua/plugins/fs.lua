return {
	{
		"nvim-telescope/telescope.nvim",
		version = "*",
		dependecies = {
			"nvim-lua/plenary.nvim",
			{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		},
		keys = {
			{ "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Telescope Find Files" },
			{ "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Telescope Live Grep" },
			{ "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Telescope Buffers" },
			{ "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Telescope Help Tags" },
		},
	},
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
		opts = {
			view = {
				width = 30,
				side = "left",
			},
			renderer = {
				group_empty = true,
			},
			filters = {
				dotfiles = false,
			},
		},
		keys = {
			{ "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "Toggle tree" },
			{ "<leader>f", "<cmd>NvimTreeFindFile<cr>", desc = "Find current file in tree" },
		},
	},
}
