return {
  {
    "saghen/blink.cmp",
    version = "*",
    dependencies = { "windwp/nvim-autopairs" },
    config = function()
      require("nvim-autopairs").setup()
      require("blink.cmp").setup({
        keymap = {
          preset = "default",
          ["<CR>"] = {
            function(cmp)
              if cmp.is_visible() and cmp.accept() then
                vim.schedule(function()
                  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
                end)
                return true
              end
            end,
            "fallback",
          },
          ["<C-y>"] = { "accept", "fallback" },
          ["<C-e>"] = { "hide", "fallback" },
          ["<C-Space>"] = { "show", "fallback" },
          ["<Tab>"] = { "select_next", "snippet_forward", "fallback" },
          ["<S-Tab>"] = { "select_prev", "snippet_backward", "fallback" },
        },
        sources = {
          default = { "lsp", "path", "snippets" },
        },
      })
    end,
  },
}
