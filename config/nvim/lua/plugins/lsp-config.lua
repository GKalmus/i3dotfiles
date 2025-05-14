return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "rust_analyzer" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = {'saghen/blink.cmp' },
		config = function()
			local capabilities = require('blink.cmp').get_lsp_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.lua_ls.setup({})
			lspconfig.rust_analyzer.setup({})
			lspconfig.clangd.setup({})
			lspconfig.pylsp.setup({})
		end
	}
}
