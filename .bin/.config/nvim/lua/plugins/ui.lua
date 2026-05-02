return {
  {
    "echasnovski/mini.icons",
    lazy = false,
    config = function()
      require("mini.icons").setup()
    end,
  },

  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({ options = { theme = "tokyonight" } })
    end,
  },
}
