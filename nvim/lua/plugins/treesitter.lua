return {
	"nvim-treesitter/nvim-treesitter",
	-- When the plugin builds, run the TSUpdate command to ensure all our servers are installed and updated
	branch = "main",
	build = ":TSUpdate",

	config = function()
		-- gain access to the treesitter config functions
		-- local ts_config = require("nvim-treesitter.configs")

		-- Call the treesitter setup function with properties to configure our experience
		-- ts_config.setup({
		-- Make sure I have the following highlighting servers
		require("nvim-treesitter").install({
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
		})
		-- make sure highlighting is enabled
		-- highlight = { enable = true },
		-- 2. Manually enable highlighting for your buffers
		vim.api.nvim_create_autocmd({ "FileType", "BufEnter" }, {
			callback = function()
				local buf = vim.api.nvim_get_current_buf()
				-- Safely attempt to attach treesitter highligting to the buffer
				pcall(vim.treesitter.start, buf)
			end,
		})
		-- })
	end,
}
