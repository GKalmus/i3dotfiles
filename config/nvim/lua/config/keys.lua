local telescope = require("telescope.builtin")

-- NeoVim keymaps
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Telescope keymaps
vim.keymap.set('n', '<C-p>', telescope.find_files, {})

-- Neo-tree keymaps
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>', {})

-- NeoVim-lspconig
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})
vim.keymap.set({ 'n', 'v' }, '<leader>f', vim.lsp.buf.format, {})
