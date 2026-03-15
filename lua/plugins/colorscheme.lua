return {
  {
    "olimorris/onedarkpro.nvim",
    name = "onedarkpro",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        colors = {
          onedark_vivid = {
            bg       = "#000000",
            fg       = "#e8e8e8",
            red      = "#ff5f87", -- errors, delimiters
            orange   = "#ff9d00", -- numbers, constants
            yellow   = "#ffd700", -- functions, warnings
            green    = "#4090d0", -- (kept: user's blue override)
            cyan     = "#00e5ff", -- types, builtins
            blue     = "#7eb3f7", -- fields, properties
            purple   = "#d580ff", -- keywords
            gray     = "#6a7385",
          },
        },
        options = {
          transparent = false,
          terminal_colors = true,
          lualine_transparency = false,
        },
        highlights = {
          -- Base
          Normal        = { bg = "#000000", fg = "#e8e8e8" },
          NormalNC      = { bg = "#000000" },
          Comment       = { fg = "#6a7385", italic = true },
          LineNr        = { fg = "#4a5568" },
          CursorLineNr  = { fg = "#ffd700", bold = true },
          CursorLine    = { bg = "#111827" },

          -- Syntax: maximum differentiation
          ["@keyword"]               = { fg = "#d580ff", bold = true },
          ["@keyword.return"]        = { fg = "#ff5f87", bold = true },
          ["@keyword.function"]      = { fg = "#d580ff", bold = true },
          ["@keyword.operator"]      = { fg = "#ff5f87" },
          ["@conditional"]           = { fg = "#d580ff", bold = true },
          ["@repeat"]                = { fg = "#d580ff", bold = true },
          ["@operator"]              = { fg = "#ff5f87" },

          ["@function"]              = { fg = "#ffd700", bold = true },
          ["@function.builtin"]      = { fg = "#00e5ff", bold = true },
          ["@function.call"]         = { fg = "#ffd700" },
          ["@method"]                = { fg = "#ffd700" },
          ["@method.call"]           = { fg = "#ffd700" },

          ["@string"]                = { fg = "#7ec880" },
          ["@string.escape"]         = { fg = "#ff9d00" },

          ["@number"]                = { fg = "#ff9d00", bold = true },
          ["@float"]                 = { fg = "#ff9d00" },
          ["@boolean"]               = { fg = "#ff9d00", bold = true },

          ["@type"]                  = { fg = "#00e5ff" },
          ["@type.builtin"]          = { fg = "#00e5ff", bold = true },
          ["@constructor"]           = { fg = "#00e5ff" },

          ["@variable"]              = { fg = "#e8e8e8" },
          ["@variable.builtin"]      = { fg = "#ff5f87", italic = true },
          ["@parameter"]             = { fg = "#c8d8f8", italic = true },
          ["@field"]                 = { fg = "#7eb3f7" },
          ["@property"]              = { fg = "#7eb3f7" },

          ["@constant"]              = { fg = "#ff9d00", bold = true },
          ["@constant.builtin"]      = { fg = "#ff9d00", bold = true },

          ["@namespace"]             = { fg = "#00e5ff", italic = true },
          ["@include"]               = { fg = "#d580ff" },
          ["@attribute"]             = { fg = "#ff9d00" },
          ["@tag"]                   = { fg = "#ff5f87" },
          ["@tag.attribute"]         = { fg = "#ffd700" },
          ["@tag.delimiter"]         = { fg = "#6a7385" },
          ["@punctuation.bracket"]   = { fg = "#aaaaaa" },
          ["@punctuation.delimiter"] = { fg = "#aaaaaa" },

          -- Git signs (gutter)
          GitSignsAdd            = { fg = "#00e676", bold = true },  -- bright green
          GitSignsChange         = { fg = "#ffd700", bold = true },  -- gold
          GitSignsDelete         = { fg = "#ff5f87", bold = true },  -- red-pink
          GitSignsChangeDelete   = { fg = "#ff9d00", bold = true },  -- orange
          GitSignsUntracked      = { fg = "#7eb3f7" },               -- sky blue
          GitSignsAddNr          = { fg = "#00e676" },
          GitSignsChangeNr       = { fg = "#ffd700" },
          GitSignsDeleteNr       = { fg = "#ff5f87" },
          -- Staged signs (slightly dimmer to distinguish from unstaged)
          GitSignsAddStaged      = { fg = "#00a050", bold = true },
          GitSignsChangeStaged   = { fg = "#b89a00", bold = true },
          GitSignsDeleteStaged   = { fg = "#b03060", bold = true },
          -- Inline blame text
          GitSignsCurrentLineBlame = { fg = "#4a5568", italic = true },
          -- Diff view (`:Gitsigns diffthis`, DiffView, etc.)
          DiffAdd    = { bg = "#0a2a1a", fg = "none" },
          DiffChange = { bg = "#1a1a00", fg = "none" },
          DiffDelete = { bg = "#2a0a0f", fg = "#ff5f87" },
          DiffText   = { bg = "#3a3000", fg = "#ffd700", bold = true },

          -- Visual mode
          Visual        = { bg = "#2d4a7a", fg = "#ffffff", bold = true },
          VisualNOS     = { bg = "#2d4a7a", fg = "#ffffff" },
          Search        = { bg = "#7a4a00", fg = "#ffd700", bold = true },
          IncSearch     = { bg = "#ffd700", fg = "#000000", bold = true },
          CurSearch     = { bg = "#ff9d00", fg = "#000000", bold = true },

          -- LSP diagnostics
          DiagnosticError           = { fg = "#ff5f87" },
          DiagnosticWarn            = { fg = "#ffd700" },
          DiagnosticInfo            = { fg = "#00e5ff" },
          DiagnosticHint            = { fg = "#7eb3f7" },

          -- Floating windows
          NormalFloat  = { bg = "none" },
          FloatBorder  = { bg = "none", fg = "#4a5568" },
          FloatTitle   = { bg = "none", fg = "#ffd700", bold = true },

          -- Telescope
          TelescopeNormal        = { bg = "none" },
          TelescopeBorder        = { bg = "none", fg = "#4a5568" },
          TelescopePromptNormal  = { bg = "none" },
          TelescopePromptBorder  = { bg = "none", fg = "#d580ff" },
          TelescopeResultsNormal = { bg = "none" },
          TelescopeResultsBorder = { bg = "none", fg = "#4a5568" },
          TelescopePreviewNormal = { bg = "none" },
          TelescopePreviewBorder = { bg = "none", fg = "#4a5568" },
          TelescopeSelection     = { bg = "#111827", fg = "#ffd700", bold = true },
          TelescopeMatching      = { fg = "#00e5ff", bold = true },

          -- WhichKey
          WhichKeyFloat  = { bg = "none" },
          WhichKey       = { fg = "#d580ff", bold = true },
          WhichKeyDesc   = { fg = "#e8e8e8" },
          WhichKeyGroup  = { fg = "#00e5ff", italic = true },

          -- Completion menu
          Pmenu         = { bg = "#0d1117", fg = "#e8e8e8" },
          PmenuSel      = { bg = "#1e2a3a", fg = "#ffd700", bold = true },
          PmenuSbar     = { bg = "#111827" },
          PmenuThumb    = { bg = "#4a5568" },
        },
      })
      vim.cmd("colorscheme onedark_vivid")
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark_vivid",
    },
  },
}
