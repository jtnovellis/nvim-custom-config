return {
  {
    "olimorris/onedarkpro.nvim",
    name = "onedarkpro",
    priority = 1000,
    config = function()
      require("onedarkpro").setup({
        colors = {
          onedark_vivid = {
            green = "#4090d0",
            bg = "#000000",
          },
        },
        options = {
          transparent = false,
          terminal_colors = true,
          lualine_transparency = false,
        },
        highlights = {
          Normal = { bg = "#000000" },
          NormalNC = { bg = "#000000" },
          -- Floating windows
          NormalFloat = { bg = "none" },
          FloatBorder = { bg = "none" },
          FloatTitle = { bg = "none" },
          -- Telescope
          TelescopeNormal = { bg = "none" },
          TelescopeBorder = { bg = "none" },
          TelescopePromptNormal = { bg = "none" },
          TelescopePromptBorder = { bg = "none" },
          TelescopeResultsNormal = { bg = "none" },
          TelescopeResultsBorder = { bg = "none" },
          TelescopePreviewNormal = { bg = "none" },
          TelescopePreviewBorder = { bg = "none" },
          -- Whichkey
          WhichKeyFloat = { bg = "none" },
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
