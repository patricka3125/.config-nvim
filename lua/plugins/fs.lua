return {
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
}
