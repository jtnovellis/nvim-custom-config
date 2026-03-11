return {
  -- Flutter tools — hot reload, device picker, devtools, outline
  {
    "akinsho/flutter-tools.nvim",
    ft = "dart",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "stevearc/dressing.nvim",
    },
    opts = {
      ui = {
        border = "rounded",
        notification_style = "native",
      },
      decorations = {
        statusline = {
          app_version = true,
          device = true,
        },
      },
      widget_guides = {
        enabled = true,
      },
      closing_tags = {
        enabled = true,
        highlight = "Comment",
        prefix = "// ",
      },
      lsp = {
        color = {
          enabled = true,
          background = true,
          virtual_text = true,
          virtual_text_str = "■",
        },
        settings = {
          showTodos = true,
          completeFunctionCalls = true,
          renameFilesWithClasses = "prompt",
          enableSnippets = true,
          updateImportsOnRename = true,
          enableSdkFormatter = true,
        },
      },
      debugger = {
        enabled = true,
        run_via_dap = true,
        exception_breakpoints = {},
      },
      dev_log = {
        enabled = true,
        open_cmd = "tabedit",
      },
      dev_tools = {
        autostart = false,
        auto_open_browser = true,
      },
    },
    keys = {
      { "<leader>Fl", "<cmd>FlutterLogClear<cr>", desc = "Flutter Log Clear" },
      { "<leader>Fc", "<cmd>FlutterCopyProfilerUrl<cr>", desc = "Flutter Copy Profiler URL" },

      -- Run & Reload
      { "<leader>Fr", "<cmd>FlutterRun<cr>", desc = "Flutter Run" },
      { "<leader>Fq", "<cmd>FlutterQuit<cr>", desc = "Flutter Quit" },
      { "<leader>FR", "<cmd>FlutterRestart<cr>", desc = "Flutter Restart" },
      { "<leader>Fh", "<cmd>FlutterReload<cr>", desc = "Flutter Hot Reload" },

      -- Devices & Emulators
      { "<leader>Fd", "<cmd>FlutterDevices<cr>", desc = "Flutter Devices" },
      { "<leader>Fe", "<cmd>FlutterEmulators<cr>", desc = "Flutter Emulators" },

      -- Dev Tools
      { "<leader>Ft", "<cmd>FlutterDevTools<cr>", desc = "Flutter DevTools" },
      { "<leader>FT", "<cmd>FlutterDevToolsActivate<cr>", desc = "Flutter DevTools Activate" },

      -- UI
      { "<leader>Fo", "<cmd>FlutterOutlineToggle<cr>", desc = "Flutter Outline Toggle" },

      -- Pub
      { "<leader>Fp", "<cmd>FlutterPubGet<cr>", desc = "Flutter Pub Get" },
      { "<leader>FP", "<cmd>FlutterPubUpgrade<cr>", desc = "Flutter Pub Upgrade" },
    },
  },

  -- Disable the default dartls from LazyVim extra (flutter-tools manages its own LSP)
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {
          enabled = false,
        },
      },
    },
  },

  -- Dart/Flutter snippets
  {
    "Nash0x7E2/awesome-flutter-snippets",
    ft = "dart",
  },

  -- Pubspec assist — manage pub dependencies
  {
    "akinsho/pubspec-assist.nvim",
    ft = "yaml",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
      { "<leader>Fa", "<cmd>PubspecAssistAddPackage<cr>", desc = "Add Pub Package" },
      { "<leader>FA", "<cmd>PubspecAssistAddDevPackage<cr>", desc = "Add Pub Dev Package" },
    },
  },
}
