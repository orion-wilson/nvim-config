return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		build = ":TSUpdate",
		main = "nvim-treesitter",
		opts = {
			ensure_installed = {
				"lua",
				"rust",
				"javascript",
				"typescript",
				"json",
				"toml",
				"bash",
				"markdown",
				"markdown_inline",
			},
			auto_install = true,
		},
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		opts = {},
	},
}
