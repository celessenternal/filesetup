return {
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
				capabilities = capabilities,
			})
			lspconfig.clangd.setup({
				filetypes = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
				capabilities = capabilities,
			})
			lspconfig.pyright.setup({
				filetypes = { "python" },
				capabilities = capabilities,
			})
			lspconfig.tsserver.setup({
				filetypes = { "typescript", "typescriptreact", "typescript.tsx" },
			})
		end,
	},
}
