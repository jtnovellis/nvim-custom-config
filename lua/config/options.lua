-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.conceallevel = 2

vim.g.lazyvim_eslint_auto_format = true

-- Python: use basedpyright (stricter, better maintained pyright fork)
vim.g.lazyvim_python_lsp = "basedpyright"
vim.g.lazyvim_python_ruff = "ruff"

-- Better UI
vim.opt.pumblend = 0
vim.opt.winblend = 0
vim.opt.cursorline = true
vim.opt.termguicolors = true

-- Keep cursor centered with context
vim.opt.scrolloff = 8
vim.opt.sidescrolloff = 8
