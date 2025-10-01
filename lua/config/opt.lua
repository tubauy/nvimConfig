opt = vim.opt

vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#101010", bold = true })
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#101010", bold = true })
vim.api.nvim_set_option("clipboard", "unnamedplus")

opt.number = true

vim.o.tabstop = 4
