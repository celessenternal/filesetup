return {
	"folke/noice.nvim",
	opts = {
		cmdline = {
			enabled = true, -- enables the Noice cmdline UI
			view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom
			opts = {}, -- global options for the cmdline. See section on views
			format = {
				cmdline = { pattern = "^:", icon = "", lang = "vim" },
				search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },
				search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },
			},
		},
		messages = {
			enabled = true, -- enables the Noice messages UI
			view = "notify", -- default view for messages
			view_error = "notify", -- view for errors
			view_warn = "notify", -- view for warnings
			view_history = "messages", -- view for :messages
			view_search = "virtualtext", -- view for search count messages. Set to `false` to disable
		},
		notify = {
			enabled = true,
			view = "notify",
		},
		lsp = {},
		message = {
			enabled = true,
			view = "notify",
			opts = {},
		},
		views = {
			cmdline_popup = {
				position = {
					row = 1,
					col = "50%",
				},
				size = {
					width = 60,
					height = "auto",
				},
			},
		},
	},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
