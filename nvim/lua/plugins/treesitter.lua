return {
	"nvim-treesitter/nvim-treesitter",
	-- When the plugin builds, run the TSUpdate command to ensure all our servers are installed and updated
	branch = "master",
	build = ":TSUpdate",

	config = function()
		-- gain access to the treesitter config functions
		local ts_config = require("nvim-treesitter.configs")

		-- Call the treesitter setup function with properties to configure our experience
		ts_config.setup({
			-- Make sure I have the following highlighting servers
			ensure_installed = {
				"vim",
				"vimdoc",
				"lua",
				"java",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"tsx",
				"markdown",
				"markdown_inline",
				"gitignore",
			},
			-- make sure highlighting is enabled
			highlight = { enable = true },
		})
	end,
}
