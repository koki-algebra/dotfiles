return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "lua", "vim", "vimdoc",
        "go", "gomod", "gosum", "gotmpl",
        "javascript", "typescript",
        "python", "json", "yaml", "markdown",
      },
    })
  end,
}
