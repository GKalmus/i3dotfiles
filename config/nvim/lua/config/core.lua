vim.opt.swapfile = false

vim.opt.number = true
vim.opt.wrap = false

vim.opt.smartindent = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4

-- Colors
vim.opt.termguicolors = false
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.cmd.colorscheme("vesper")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.api.nvim_set_hl(0, "Normal", { ctermbg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { ctermbg = "none" })

vim.cmd("cabb W w")
vim.cmd("cabb Q q")
