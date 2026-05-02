return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    bufdelete = { enabled = true },
    explorer = {
      replace_netrw = true,
    },
    indent = { enabled = true },
    input = { enabled = true },
    lazygit = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    picker = {
      sources = {
        explorer = { hidden = true },
        files = { hidden = true },
        grep = { hidden = true },
      },
    },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
  keys = {
    -- explorer
    { "<leader>e",  function() Snacks.explorer() end,                    desc = "File explorer" },

    -- picker: files
    { "<leader>ff", function() Snacks.picker.files() end,                desc = "Find files" },
    { "<leader>fg", function() Snacks.picker.grep() end,                 desc = "Live grep" },
    { "<leader>fb", function() Snacks.picker.buffers() end,              desc = "Find buffers" },
    { "<leader>fh", function() Snacks.picker.help() end,                 desc = "Help tags" },
    { "<leader>fr", function() Snacks.picker.recent() end,               desc = "Recent files" },
    { "<leader>fn", function() Snacks.picker.notifications() end,        desc = "Notifications" },

    -- picker: git
    { "<leader>gc", function() Snacks.picker.git_log() end,              desc = "Git commits" },
    { "<leader>gs", function() Snacks.picker.git_status() end,           desc = "Git status" },

    -- picker: LSP
    { "gd",         function() Snacks.picker.lsp_definitions() end,      desc = "Go to definition" },
    { "gD",         function() Snacks.picker.lsp_declarations() end,     desc = "Go to declaration" },
    { "gr",         function() Snacks.picker.lsp_references() end,       desc = "References" },
    { "gi",         function() Snacks.picker.lsp_implementations() end,  desc = "Go to implementation" },
    { "<leader>ds", function() Snacks.picker.lsp_symbols() end,          desc = "Document symbols" },
    { "<leader>ws", function() Snacks.picker.lsp_workspace_symbols() end, desc = "Workspace symbols" },

    -- buffer
    { "<leader>bd", function() Snacks.bufdelete() end,                   desc = "Delete buffer" },

    -- git
    { "<leader>gg", function() Snacks.lazygit() end,                     desc = "LazyGit" },
    { "<leader>gb", function() Snacks.gitbrowse() end,                   desc = "Git browse", mode = { "n", "v" } },
  },
}
