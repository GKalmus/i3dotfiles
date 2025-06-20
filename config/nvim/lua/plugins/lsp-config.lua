return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "lua_ls", "rust_analyzer" },
		},
	}

	,
	{
		"neovim/nvim-lspconfig",
		dependencies = { 'saghen/blink.cmp' },
		vim.lsp.enable('pyright'),
		vim.lsp.enable('wgsl_analyzer'),
		vim.lsp.enable('lua_ls'),
		vim.lsp.enable('rust_analyzer'),
		vim.lsp.enable('clangd'),
		vim.lsp.enable('pylsp'),
	}
}
