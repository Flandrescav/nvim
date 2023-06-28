return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
      "williamboman/mason.nvim",
      "folke/neodev.nvim",
      "hrsh7th/cmp-nvim-lsp",
    }, 

  config = function()
      require("mason").setup()
      require("neodev").setup({})
      require("mason-lspconfig").setup({
              ensure_installed = {
                      "lua_ls",
                      "pylsp",
                      "gopls",
              },
              automatic_installation = true,
      })

  local lspconfig = require('lspconfig')

  local capabilities = require('cmp_nvim_lsp').default_capabilities()
  capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.textDocument.foldingRange = {
          dynamicRegistration = false,
          lineFoldingOnly = true,
  }

  local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
		for type, icon in pairs(signs) do
			local hl = "DiagnosticSign" .. type
			vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
		end
		vim.diagnostic.config({
			virtual_text = false,
			signs = true,
			underline = true,
			update_in_insert = true,
			severity_sort = false,
		})

  local on_attach = function(bufnr)
			vim.api.nvim_create_autocmd("CursorHold", {
				buffer = bufnr,
				callback = function()
					local opts = {
						focusable = false,
						close_events = { "BufLeave", "CursorMoved", "InsertEnter", "FocusLost" },
						border = "rounded",
						source = "always",
						prefix = " ",
						scope = "line",
					}
					vim.diagnostic.show()
					vim.diagnostic.open_float(nil, opts)
				end,
			})
		end

     require("lspconfig").lua_ls.setup({
          on_attach = on_attach(),
          capabilities = capabilities,
          settings = {
            Lua = {
              comletion = {
                callSnippet = "Replace"
              }
            }
          }
      })
      
      require("lspconfig").gopls.setup({
          on_attach = on_attach(),
          capabilities = capabilities,
          cmd = {'gopls'},
          filetypes = {"go", "gomod"},
          settings = {
            gopls = {
              completeUnimported = true,
              usePlaceholders = true,
              analyses = {
                unusedparams = true,
              },
              staticcheck = true,
            },
          },
      })

      require("lspconfig").rust_analyzer.setup({
        on_attach = on_attach,
        capabilities = capabilities,
        filetypes = {"rust"},
        settings = {
          ['rust-analyzer'] = {
            diagnostic = {
              endble = true,
            },
          },
        },
      })
  end,
}
}
