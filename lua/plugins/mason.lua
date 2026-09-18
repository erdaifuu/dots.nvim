return {
  {
    "mason-org/mason.nvim",
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    }
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {} },
        "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = { "pyright", "rust_analyzer", "texlab" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      -- pyright
      vim.lsp.enable("pyright")

      -- rust analyzer
      vim.lsp.enable("rust_analyzer")

      -- texlab
      vim.lsp.enable("texlab")

      -- cpp
      vim.lsp.enable("clangd")

      -- how to customize a server
      vim.lsp.config("pyright", {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
            },
          },
        },
      })
    end,
  },
}
