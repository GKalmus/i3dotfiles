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
			ensure_installed = {
				"biome",
				"lua_ls",
				"rust_analyzer",
				"pylsp",
				"wgsl_analyzer",
				"clangd",
			},
		},
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { 'saghen/blink.cmp' },
		vim.lsp.config(
			"*",
			--@type vim.lsp.config
			{
				capabilities = require("blink.cmp").get_lsp_capabilities(),
				root_markers = {
					".git",
				},
			}
		),
		vim.lsp.enable({
			'lua_ls',
			'wgsl_analyzer',
			'rust_analyzer',
			'clangd',
			'pylsp',
			'biome',
		}),
	}
}
