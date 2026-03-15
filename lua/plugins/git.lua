return {
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gn", "<cmd>Neogit<cr>", desc = "Neogit" },
    },
    opts = {
      integrations = {
        diffview = true,
      },
    },
  },

  -- Inline git decorations: blame, hunk preview, signs
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    opts = {
      signs = {
        add          = { text = "▎", hl = "GitSignsAdd" },
        change       = { text = "▎", hl = "GitSignsChange" },
        delete       = { text = "", hl = "GitSignsDelete" },
        topdelete    = { text = "", hl = "GitSignsDelete" },
        changedelete = { text = "▎", hl = "GitSignsChangeDelete" },
        untracked    = { text = "▎", hl = "GitSignsUntracked" },
      },
      signs_staged = {
        add          = { text = "▎" },
        change       = { text = "▎" },
        delete       = { text = "" },
        topdelete    = { text = "" },
        changedelete = { text = "▎" },
      },
      signs_staged_enable = true,
      current_line_blame = true,
      current_line_blame_opts = {
        delay = 500,
        virt_text_pos = "eol",
      },
      on_attach = function(buffer)
        local gs = package.loaded.gitsigns
        local map = function(mode, l, r, desc)
          vim.keymap.set(mode, l, r, { buffer = buffer, desc = desc })
        end
        map("n", "]h", gs.next_hunk, "Next Hunk")
        map("n", "[h", gs.prev_hunk, "Prev Hunk")
        map("n", "<leader>ghp", gs.preview_hunk, "Preview Hunk")
        map("n", "<leader>ghb", gs.blame_line, "Blame Line")
        map("n", "<leader>ghs", gs.stage_hunk, "Stage Hunk")
        map("n", "<leader>ghr", gs.reset_hunk, "Reset Hunk")
        map("n", "<leader>ghd", gs.diffthis, "Diff This")
      end,
    },
  },
}
