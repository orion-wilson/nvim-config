return {
	{
		"folke/trouble.nvim",
		lazy = false,
		dependencies = { "nvim-tree/nvim-web-devicons" },
		keys = {
			{ "<leader>cd", "<cmd>Trouble diagnostics focus<cr>", desc = "Diagnostics" },
			{ "<leader>cD", "<cmd>Trouble diagnostics focus filter.buf=0<cr>", desc = "Buffer diagnostics" },
			{ "<leader>cr", "<cmd>Trouble lsp_references focus<cr>", desc = "LSP references" },
			{ "<leader>cs", "<cmd>Trouble symbols focus<cr>", desc = "Document symbols" },
			{ "<leader>cq", "<cmd>Trouble qflist focus<cr>", desc = "Quickfix list" },
			{ "<leader>cl", "<cmd>Trouble loclist focus<cr>", desc = "Location list" },
		},
		opts = {},
	},
}
