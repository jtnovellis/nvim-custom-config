return {
  -- Auto close/rename HTML/JSX tags
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    opts = {},
  },

  -- Package info for package.json
  {
    "vuki656/package-info.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    event = "BufRead package.json",
    opts = {},
    keys = {
      { "<leader>cps", function() require("package-info").show() end, desc = "Show Package Versions" },
      { "<leader>cpu", function() require("package-info").update() end, desc = "Update Package" },
      { "<leader>cpd", function() require("package-info").delete() end, desc = "Delete Package" },
      { "<leader>cpi", function() require("package-info").install() end, desc = "Install Package" },
      { "<leader>cpc", function() require("package-info").change_version() end, desc = "Change Package Version" },
    },
  },

  -- Surround: add/change/delete surrounding pairs
  {
    "nvim-mini/mini.surround",
    event = "VeryLazy",
    opts = {
      mappings = {
        add = "gsa",
        delete = "gsd",
        find = "gsf",
        find_left = "gsF",
        highlight = "gsh",
        replace = "gsr",
        update_n_lines = "gsn",
      },
    },
  },

  -- Better quickfix window with preview
  {
    "kevinhwang91/nvim-bqf",
    ft = "qf",
    opts = {
      preview = {
        winblend = 0,
        border = "rounded",
      },
    },
  },
}
