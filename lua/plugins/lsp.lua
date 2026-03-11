return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- CSS
        cssls = {},
        -- HTML
        html = {},
        -- Emmet for fast HTML/JSX expansion
        emmet_ls = {
          filetypes = {
            "html",
            "css",
            "scss",
            "javascriptreact",
            "typescriptreact",
          },
        },
        -- TypeScript (vtsls) — enhance with auto-imports and inlay hints
        vtsls = {
          settings = {
            typescript = {
              updateImportsOnFileMove = { enabled = "always" },
              suggest = {
                completeFunctionCalls = true,
              },
              inlayHints = {
                enumMemberValues = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                variableTypes = { enabled = false },
              },
            },
            javascript = {
              updateImportsOnFileMove = { enabled = "always" },
              suggest = {
                completeFunctionCalls = true,
              },
              inlayHints = {
                enumMemberValues = { enabled = true },
                functionLikeReturnTypes = { enabled = true },
                parameterNames = { enabled = "literals" },
                parameterTypes = { enabled = true },
                propertyDeclarationTypes = { enabled = true },
                variableTypes = { enabled = false },
              },
            },
          },
        },
        -- Python (basedpyright) — enhanced type checking and inlay hints
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                typeCheckingMode = "standard",
                autoImportCompletions = true,
                diagnosticMode = "openFilesOnly",
                inlayHints = {
                  variableTypes = true,
                  callArgumentNames = "partial",
                  functionReturnTypes = true,
                  genericTypes = true,
                },
              },
            },
          },
        },
        -- Ruff — fast linter + formatter for Python
        ruff = {
          init_options = {
            settings = {
              logLevel = "error",
              lint = {
                select = { "E", "F", "W", "I", "N", "UP", "B", "SIM", "RUF" },
              },
            },
          },
        },
      },
    },
  },

  -- Ensure Mason installs all dev tools
  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "css-lsp",
        "html-lsp",
        "emmet-ls",
        "prettier",
        "eslint-lsp",
        "js-debug-adapter",
        "basedpyright",
        "ruff",
        "debugpy",
      },
    },
  },
}
