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

vim.keymap.set("t", "jk", "<C-\\><C-n>", { desc = "Exit terminal mode" })
local _lsp_ref_win = nil
vim.keymap.set("n", "<leader>cc", function()
  vim.cmd("cclose")
  if _lsp_ref_win and vim.api.nvim_win_is_valid(_lsp_ref_win) then
    vim.api.nvim_set_current_win(_lsp_ref_win)
    _lsp_ref_win = nil
  end
end, { desc = "Close quickfix" })

-- expose for lsp.lua
_G._lsp_ref_win = function() return _lsp_ref_win end
_G._lsp_ref_win_set = function(id) _lsp_ref_win = id end

vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move to left split" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move to split below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move to split above" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move to right split" })
