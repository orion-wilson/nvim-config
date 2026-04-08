return {
  {
    "RRethy/vim-illuminate",
    event = "VeryLazy",
    opts = {
      delay = 200,
    },
    config = function(_, opts)
      require("illuminate").configure(opts)
      vim.keymap.set("n", "<leader>nn", require("illuminate").goto_next_reference, { desc = "Next reference" })
      vim.keymap.set("n", "<leader>nN", require("illuminate").goto_prev_reference, { desc = "Prev reference" })
    end,
  },
}
