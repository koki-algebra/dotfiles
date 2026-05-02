return {
  {
    "williamboman/mason.nvim",
    config = true,
  },

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "gopls" },
        automatic_installation = true,
      })
    end,
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = { "williamboman/mason-lspconfig.nvim" },
    config = function()
      vim.lsp.config("*", {
        capabilities = require("cmp_nvim_lsp").default_capabilities(),
      })

      vim.lsp.config("gopls", {
        settings = {
          gopls = {
            analyses = { unusedparams = true, shadow = true },
            staticcheck = true,
            gofumpt = true,
          },
        },
      })

      vim.lsp.enable("gopls")

      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(ev)
          local opts = { buffer = ev.buf }
          local map = vim.keymap.set
          -- gd/gD/gr/gi/ds/ws are handled by snacks.picker
          map("n", "K", function()
            for _, win in ipairs(vim.api.nvim_list_wins()) do
              if vim.api.nvim_win_get_config(win).relative ~= "" then
                vim.api.nvim_win_close(win, false)
                return
              end
            end
            vim.lsp.buf.hover()
          end, vim.tbl_extend("force", opts, { desc = "Hover docs (toggle)" }))
          map("n", "<leader>rn", vim.lsp.buf.rename,        vim.tbl_extend("force", opts, { desc = "Rename" }))
          map("n", "<leader>ca", vim.lsp.buf.code_action,   vim.tbl_extend("force", opts, { desc = "Code action" }))
          map("n", "<leader>d",  vim.diagnostic.open_float, vim.tbl_extend("force", opts, { desc = "Diagnostics" }))
          map("n", "[d",         vim.diagnostic.goto_prev,  vim.tbl_extend("force", opts, { desc = "Prev diagnostic" }))
          map("n", "]d",         vim.diagnostic.goto_next,  vim.tbl_extend("force", opts, { desc = "Next diagnostic" }))
        end,
      })
    end,
  },
}
