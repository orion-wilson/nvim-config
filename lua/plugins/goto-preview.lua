return {
	{
		"rmagatti/goto-preview",
		dependencies = { "rmagatti/logger.nvim" },
		event = "BufEnter",
		config = function()
			require("goto-preview").setup({
				width = 100,
				height = 20,
				border = { "↖", "─", "╮", "│", "╯", "─", "╰", "│" },
				default_mappings = false,
				resizing_mappings = true,
				post_open_hook = function(buf, _)
					vim.keymap.set("n", "q", "<cmd>close<CR>", { buffer = buf, silent = true })
				end,
			})

			local gp = require("goto-preview")
			local map = vim.keymap.set
			map("n", "<leader>pd", gp.goto_preview_definition, { desc = "Preview definition" })
			map("n", "<leader>pt", gp.goto_preview_type_definition, { desc = "Preview type definition" })
			map("n", "<leader>pi", gp.goto_preview_implementation, { desc = "Preview implementation" })
			map("n", "<leader>pD", gp.goto_preview_declaration, { desc = "Preview declaration" })
			map("n", "<leader>pr", gp.goto_preview_references, { desc = "Preview references" })
			map("n", "<leader>pc", gp.close_all_win, { desc = "Close all previews" })
		end,
	},
}
