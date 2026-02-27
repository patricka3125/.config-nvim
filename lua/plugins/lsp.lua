return {
	-- Mason: The Package Manager
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"neovim/nvim-lspconfig",
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
	},
	{
		"stevearc/conform.nvim",
		event = { "BufWritePre" },
		opts = {
			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
				cpp = { "clang-format" },
				javascript = { "prettier", stop_after_first = true },
				go = { "gofmt", "goimports" },
			},

			format_on_save = {
				timeout_ms = 500,
				lsp_format = "fallback",
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		opts = {
			ensure_installed = { "cpp", "lua", "vim", "python", "go" },
			auto_install = true,
			highlight = { enable = true },
		},
		config = function(_, opts)
			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "cpp", "python", "vim", "lua", "c", "go" },
				callback = function()
					vim.treesitter.start()
				end,
			})
		end,
	},
}
