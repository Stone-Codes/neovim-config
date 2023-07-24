print("plugins inc")
local plugins = {
    {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "typescript-language-server",
        "eslint_d",
        "gofumpt",
        "goimports-reviser",
        "golines"
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      print("lsp stuff")

      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = {"go", "typescript", "typescriptreact"},
    opts = function ()
      return require 'custom.configs.null_ls'
    end
  }

}
return plugins
