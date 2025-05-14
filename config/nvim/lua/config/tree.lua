local tree = require("nvim-treesitter.configs")
tree.setup({
	ensure_installed = { "lua", "c", "rust" },
	highlight = { enable = true },
	indent = { enable = true },
})
