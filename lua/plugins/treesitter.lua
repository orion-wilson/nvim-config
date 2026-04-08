return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    main = 'nvim-treesitter',
    opts = {
      ensure_install = { "lua", "rust", "javascript", "typescript", "json", "toml", "bash", "markdown" },
      auto_install = true,
    },
  },
  {
    'nvim-treesitter/nvim-treesitter-context',
    dependencies = { 'nvim-treesitter/nvim-treesitter' },
    opts = {}
  }
}
