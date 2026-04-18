require("config.lazy")

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 30

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.cmd.colorscheme("catppuccin-nvim")

vim.keymap.set("n", "<leader>ff", function()
	require("telescope.builtin").find_files()
end, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", function()
	require("telescope.builtin").live_grep()
end, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", function()
	require("telescope.builtin").buffers()
end, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", function()
	require("telescope.builtin").help_tags()
end, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>fr", function()
	require("telescope.builtin").grep_string({ search = vim.fn.expand("%:t:r") })
end, { desc = "Find references to current file" })

vim.keymap.set("n", "<leader>tt", ":Neotree toggle<CR>", { desc = "Neotree toggle" })
vim.keymap.set("n", "<leader>tf", ":Neotree focus<CR>", { desc = "Neotree focus" })

vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("t", ";;", "<C-\\><C-n>", { desc = "Exit terminal mode" })
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>", { desc = "Clear search highlights" })
vim.keymap.set("n", "<leader>;", "mzA;<Esc>`z", { desc = "Append semicolon to end of line" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to split below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to split above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
