require "config.lazy"

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 30

vim.cmd "set expandtab"
vim.cmd "set tabstop=2"
vim.cmd "set softtabstop=2"
vim.cmd "set shiftwidth=2"

vim.cmd.colorscheme "catppuccin-nvim"
local builtin = require "telescope.builtin"
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>fr", function()
  builtin.grep_string({ search = vim.fn.expand("%:t:r") })
end, { desc = "Find references to current file" })

vim.keymap.set("n", "<leader>tt", ":Neotree toggle<CR>")
vim.keymap.set("n", "<leader>tf", ":Neotree focus<CR>")

vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode" })
vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode" })

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to split below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to split above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
