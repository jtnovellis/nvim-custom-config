return {
  -- Modern file icons with color
  {
    "nvim-tree/nvim-web-devicons",
    opts = {
      color_icons = true,
      default = true,
      override_by_extension = {
        ["ts"] = { icon = "", color = "#3178c6", name = "TypeScript" },
        ["tsx"] = { icon = "", color = "#3178c6", name = "TypeScriptReact" },
        ["js"] = { icon = "", color = "#f7df1e", name = "JavaScript" },
        ["jsx"] = { icon = "", color = "#61dafb", name = "JavaScriptReact" },
        ["json"] = { icon = "", color = "#cbcb41", name = "Json" },
        ["md"] = { icon = "", color = "#519aba", name = "Markdown" },
        ["yml"] = { icon = "", color = "#6d8086", name = "Yaml" },
        ["yaml"] = { icon = "", color = "#6d8086", name = "Yaml" },
        ["prisma"] = { icon = "", color = "#5a67d8", name = "Prisma" },
        ["env"] = { icon = "", color = "#faf743", name = "Env" },
        [".env"] = { icon = "", color = "#faf743", name = "Env" },
        ["lock"] = { icon = "", color = "#eb4034", name = "Lock" },
        ["log"] = { icon = "", color = "#81e043", name = "Log" },
        ["dart"] = { icon = "", color = "#03589C", name = "Dart" },
        ["arb"] = { icon = "", color = "#03589C", name = "Arb" },
        ["freezed.dart"] = { icon = "", color = "#03589C", name = "FreezedDart" },
        ["g.dart"] = { icon = "", color = "#03589C", name = "GeneratedDart" },
        ["py"] = { icon = "", color = "#3572A5", name = "Python" },
        ["pyi"] = { icon = "", color = "#3572A5", name = "PythonStub" },
        ["pyx"] = { icon = "", color = "#3572A5", name = "Cython" },
        ["toml"] = { icon = "", color = "#9c4221", name = "Toml" },
        ["cfg"] = { icon = "", color = "#6d8086", name = "Config" },
        ["ini"] = { icon = "", color = "#6d8086", name = "Ini" },
      },
    },
  },

  -- Better statusline styling
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      opts.options = vim.tbl_deep_extend("force", opts.options or {}, {
        theme = "catppuccin",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        globalstatus = true,
      })
    end,
  },

  -- Dashboard header override (snacks.nvim)
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
      ██╗████████╗███╗   ██╗ ██████╗ ██╗   ██╗███████╗██╗     ██╗     ██╗███████╗
      ██║╚══██╔══╝████╗  ██║██╔═══██╗██║   ██║██╔════╝██║     ██║     ██║██╔════╝
      ██║   ██║   ██╔██╗ ██║██║   ██║██║   ██║█████╗  ██║     ██║     ██║███████╗
 ██   ██║   ██║   ██║╚██╗██║██║   ██║╚██╗ ██╔╝██╔══╝  ██║     ██║     ██║╚════██║
 ╚█████╔╝   ██║   ██║ ╚████║╚██████╔╝ ╚████╔╝ ███████╗███████╗███████╗██║███████║
  ╚════╝    ╚═╝   ╚═╝  ╚═══╝ ╚═════╝   ╚═══╝  ╚══════╝╚══════╝╚══════╝╚═╝╚══════╝]],
        },
      },
    },
  },

  -- Colorizer for CSS/Tailwind colors inline
  {
    "NvChad/nvim-colorizer.lua",
    event = "BufReadPost",
    opts = {
      filetypes = { "css", "scss", "html", "javascript", "typescript", "javascriptreact", "typescriptreact", "lua" },
      user_default_options = {
        css = true,
        tailwind = true,
        mode = "virtualtext",
        virtualtext = "■",
      },
    },
  },

  -- Smooth scrolling
  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    opts = {
      mappings = { "<C-u>", "<C-d>", "<C-b>", "<C-f>", "zt", "zz", "zb" },
      hide_cursor = true,
      respect_scrolloff = true,
    },
  },

  -- Window separator lines
  {
    "nvim-zh/colorful-winsep.nvim",
    event = "WinNew",
    opts = {},
  },
}
