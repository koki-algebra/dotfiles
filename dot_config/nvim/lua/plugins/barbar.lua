return {
  "romgrk/barbar.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "lewis6991/gitsigns.nvim",
  },
  event = "BufWinEnter",
  init = function()
    vim.g.barbar_auto_setup = false
  end,
  opts = {
    animation = true,
    auto_hide = false,
    tabpages = true,
    clickable = true,
    icons = {
      buffer_index = false,
      buffer_number = false,
      button = "",
      diagnostics = {
        [vim.diagnostic.severity.ERROR] = { enabled = true, icon = "ﬀ" },
        [vim.diagnostic.severity.WARN]  = { enabled = false },
        [vim.diagnostic.severity.INFO]  = { enabled = false },
        [vim.diagnostic.severity.HINT]  = { enabled = true },
      },
      gitsigns = {
        added   = { enabled = true, icon = "+" },
        changed = { enabled = true, icon = "~" },
        deleted = { enabled = true, icon = "-" },
      },
      filetype = { custom_colors = false, enabled = true },
      separator = { left = "▎", right = "" },
      modified  = { button = "●" },
      pinned    = { button = "", filename = true },
      preset    = "default",
    },
  },
  keys = {
    { "<S-h>",       "<cmd>BufferPrevious<CR>",           desc = "Prev buffer" },
    { "<S-l>",       "<cmd>BufferNext<CR>",               desc = "Next buffer" },
    { "<leader>bp",  "<cmd>BufferPin<CR>",                desc = "Pin buffer" },
    { "<leader>bc",  "<cmd>BufferClose<CR>",              desc = "Close buffer" },
    { "<leader>bco", "<cmd>BufferCloseAllButCurrent<CR>", desc = "Close other buffers" },
    { "<leader>b1",  "<cmd>BufferGoto 1<CR>",             desc = "Buffer 1" },
    { "<leader>b2",  "<cmd>BufferGoto 2<CR>",             desc = "Buffer 2" },
    { "<leader>b3",  "<cmd>BufferGoto 3<CR>",             desc = "Buffer 3" },
    { "<leader>b4",  "<cmd>BufferGoto 4<CR>",             desc = "Buffer 4" },
    { "<leader>b5",  "<cmd>BufferGoto 5<CR>",             desc = "Buffer 5" },
  },
}
