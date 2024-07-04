return {
	{
		"elentok/format-on-save.nvim",
		config = function()
			local format_on_save = require("format-on-save")
			local formatters = require("format-on-save.formatters")

			format_on_save.setup({
				exclude_path_patterns = {
					"/node_modules/",
				},
				formatter_by_ft = {
					json = formatters.lsp,
					lua = formatters.lsp,
					python = formatters.black,
					scad = formatters.lsp,
					yaml = formatters.lsp,

				},
			})
		end
	}
}
