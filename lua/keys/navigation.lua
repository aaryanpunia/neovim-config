-- Netrw mapping
vim.keymap.set("n", "<S-p>", function() vim.cmd('Ex') end)
vim.keymap.set("n", "<S-p>", function()

end)

-- Telescope mapping
vim.keymap.set("n", "<Space>o", require("telescope.builtin").find_files, { noremap = true })
vim.keymap.set("n", "<Space>p", require("telescope.builtin").live_grep, { noremap = true })
