return {
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		priority = 1001,
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.rust_analyzer.setup {}
			lspconfig.gopls.setup {}
			lspconfig.eslint.setup {
				on_attach = function(client, bufnr)
					vim.api.nvim_create_autocmd("BufWritePre", {
						buffer = bufnr,
						command = "EslintFixAll",
					})
				end
			}
			lspconfig.tsserver.setup {}
			lspconfig.lua_ls.setup {}
		end,
	}
}
