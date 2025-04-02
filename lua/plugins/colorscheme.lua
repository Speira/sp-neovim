return {
  {
    "craftzdog/solarized-osaka.nvim",
    branch = "osaka",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = true,
    priority = 1000,
    opts = { style = "moon", transparent = true },
  },
  {
    "brenoprata10/nvim-highlight-colors",
    config = function()
      require('nvim-highlight-colors').setup({
        render = 'foreground',
      })
    end,
  },

}
