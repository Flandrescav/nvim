return {
  {
    event = "VeryLazy",
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim",
      "folke/neodev.nvim",
    },
 
  config = function()
      require("mason").setup()
      require("mason-lspconfig").setup()
      require("neodev").setup({})

  local lspconfig = require('lspconfig')

  local capabilities = require('cmp_nvim_lsp').default_capabilities()

      require("lspconfig").lua_ls.setup {
          capabilities = capabilities,
          settings = {
            Lua = {
              comletion = {
                callSnippet = "Replace"
              }
            }
          }
      }
  end,
}
}
