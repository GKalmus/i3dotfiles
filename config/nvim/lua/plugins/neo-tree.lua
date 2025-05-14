return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		view = { adaptive_size = true },
		event_handlers = { {
			event = "file_open_requested",
			handler = function()
				require("neo-tree.command").execute({ action = "close" })
			end
		},
		}
	},
}
