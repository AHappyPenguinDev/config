return {
	"nvim-tree/nvim-tree.lua",
	config = function()
		vim.keymap.set("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle [E]xplorer" })
		require("nvim-tree").setup({
			hijack_netrw = true,
			auto_reload_on_write = true,
			-- Opens cwd
			update_cwd = true,
			update_focused_file = {
				enable = true,
				update_cwd = true,
			},
            filters = {
                dotfiles = false,
                git_ignored = false,
            },
		})

		vim.g.nvim_tree_respect_buf_cwd = 1
	end,
}
