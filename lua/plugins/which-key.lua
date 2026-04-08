return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
      spec = {
        { "<leader>f", group = "Find (Telescope)" },
        { "<leader>t", group = "Tree / Toggle" },
        { "<leader>g", group = "Git" },
        { "<leader>h", group = "Hunks (Git)" },
        { "<leader>a", group = "AI (Claude)" },
        { "<leader>r", group = "Refactor" },
        { "<leader>c", group = "Code" },
      },
    },
  },
}
