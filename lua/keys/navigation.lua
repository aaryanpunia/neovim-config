-- Netrw mapping
vim.keymap.set("n", "<S-p>", function() vim.cmd('Ex') end)

-- Telescope mapping
vim.keymap.set("n", "<Space>o", require("telescope.builtin").find_files, { noremap = true })
vim.keymap.set("n", "<Space>p", require("telescope.builtin").live_grep, { noremap = true })

-- prev next file mapping
-- Navigate to previously opened file
vim.keymap.set('n', 'B', '<cmd>bprevious<CR>', { noremap = true, silent = true })

-- Navigate to next file
vim.keymap.set('n', 'M', '<cmd>bnext<CR>', { noremap = true, silent = true })
