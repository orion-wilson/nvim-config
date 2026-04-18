return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"williamboman/mason.nvim",
			"williamboman/mason-lspconfig.nvim",
			"WhoIsSethDaniel/mason-tool-installer.nvim",
			"saghen/blink.cmp",
		},
		config = function()
			require("mason").setup()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "rust_analyzer", "ts_ls" },
				automatic_installation = true,
			})
			require("mason-tool-installer").setup({
				ensure_installed = { "stylua", "prettier" },
			})

			local capabilities = require("blink.cmp").get_lsp_capabilities()
			vim.lsp.config("*", { capabilities = capabilities })

			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = { globals = { "vim" } },
					},
				},
			})

			vim.lsp.config("rust_analyzer", {
				settings = {
					["rust-analyzer"] = {
						completion = {
							autoimport = { enable = true },
						},
						imports = {
							granularity = { group = "module" },
							prefix = "self",
						},
						files = { excludeDirs = { "target" } },
						cargo = { buildScripts = { enable = false } },
						procMacro = { enable = true },
						checkOnSave = false,
					},
				},
			})

			vim.lsp.enable({ "lua_ls", "rust_analyzer", "ts_ls" })

			vim.api.nvim_create_autocmd("LspAttach", {
				callback = function(event)
					local opts = { buffer = event.buf }
					vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
					vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
					vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
					vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
					vim.keymap.set("n", "<leader>rn", function()
						vim.ui.input({ prompt = "Rename: " }, function(input)
							if input then
								vim.lsp.buf.rename(input)
								vim.defer_fn(function()
									vim.cmd("silent! wa")
								end, 100)
							end
						end)
					end, opts)
					vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
					vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
					vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
					vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
				end,
			})
		end,
	},
}
