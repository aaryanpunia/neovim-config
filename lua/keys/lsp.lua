vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(args)
		local bufnr = args.buf
		local client = vim.lsp.get_client_by_id(args.data.client_id)
		local opts = { buffer = bufnr, noremap = true, silent = true }
		vim.keymap.set("n", "K", vim.lsp.buf.hover)
		vim.keymap.set("n", "gd", vim.lsp.buf.definition)
		vim.keymap.set("n", "<C-e>", vim.diagnostic.open_float)
		vim.keymap.set("n", "W", function() 
			local params = vim.lsp.util.make_formatting_params({})
   			local handler = function(err, result)
				if not result then return end
				vim.lsp.util.apply_text_edits(result, bufnr, client.offset_encoding)
				vim.cmd('write')
			end
			client.request('textDocument/formatting', params, handler, bufnr)
  			end, {buffer = bufnr})
	end
})
