local opt = vim.opt

opt.mouse = "a"
opt.backspace = "2"

opt.autoindent = true
opt.smartindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true

opt.number = true
opt.colorcolumn = "160"

require("config.lazy")

vim.lsp.enable("clangd")
vim.lsp.enable("gopls")

-- Disable netrw (for nvim-tree)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true
