return {
	"akinsho/bufferline.nvim",
	opts = {
		options = {
			diagnostics = "nvim_lsp",
			always_show_bufferline = false,
			mode = "tabs",
			show_buffer_close_icons = false,
			show_close_icons = false,
			color_icons = true,
		},
		highlights = {
			background = {
				guifg = "white",
				guibg = "none",
			},
		},
	},
	config = function(_, opts)
		require("bufferline").setup(opts)
	end,
}
