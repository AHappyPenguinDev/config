return {
	"kawre/leetcode.nvim",
	build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
	dependencies = {
        "MunifTanjim/nui.nvim",
		"nvim-telescope/telescope.nvim",
	},
	opts = {
		-- configuration goes here
		lang = "java",
	},
}
