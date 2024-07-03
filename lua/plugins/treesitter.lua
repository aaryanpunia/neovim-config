return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		priority = 1002,
		opts = {
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
			}
		},
		main = "nvim-treesitter.configs"
	}
}
