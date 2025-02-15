return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-telescope/telescope-file-browser.nvim",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		local fb_actions = require("telescope").extensions.file_browser.actions
		telescope.setup({
			defaults = {
				mappings = {
					n = {
						["q"] = actions.close,
					},
				},
			},
			extensions = {
				file_browser = {
					--theme = "ivy",
					hijack_netrw = true,
					mappings = {
						["n"] = {
							["N"] = fb_actions.create,
							["h"] = fb_actions.goto_parent_dir,
							["/"] = function()
								vim.cmd("startinsert")
							end,
						},
					},
				},
			},
		})

		telescope.load_extension("file_browser")
	end,
	keys = {
		{
			";r",
			function()
				require("telescope.builtin").live_grep()
			end,
		},
		{
			";f",
			function()
				require("telescope.builtin").find_files({
					no_ignore = false,
					hidden = false,
				})
			end,
		},
		{
			";;",
			function()
				require("telescope.builtin").resume()
			end,
		},
		{
			"sf",
			function()
				require("telescope").extensions.file_browser.file_browser({
					path = "%:p:h",
					cwd = vim.fn.expand("%:p:h"),
					hidden = false,
					no_ignore = false,
					initial_mode = "normal",
				})
			end,
		},
	},
}
