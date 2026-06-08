return {
	{
		"nvim-telescope/telescope.nvim",
		-- pull a specific version of the plugin
		-- tag = '0.1.6',
		dependencies = {
			-- general purpose plugin used to build user interfaces in neovim plugins
			"nvim-lua/plenary.nvim",
		},
		config = function()
			-- get access to telescopes built in functions
			local builtin = require("telescope.builtin")

			-- set a vim motion to <Space> + f to search for files by their names
			-- DELAY for find files to open is because the other motions also start with "f", so it
			-- waits to see if you will type something else.
			vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "[F]ind [F]iles" })
			-- set a vim motion to <Space> + g to search for files based on the text inside of them
			vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "[F]ind by [G]rep" })
            -- Find not ignoring hidden && gitIgnore
			vim.keymap.set("n", "<leader>fnif", function()
				require("telescope.builtin").find_files({
					hidden = true,
                    no_ignore = true,
				})
			end, {desc = "[F]ind [N]o [I]gnore [F]iles"})
            -- Grep not ignoring hidden && gitIgnore
            vim.keymap.set("n", "<leader>fnig", function()
				require("telescope.builtin").live_grep({
                 additional_args = function()
                            return { "--hidden" , "--no-ignore"}
                        end,
				})
			end, {desc = "[F]ind [N]o [I]gnore [G]rep"})

			-- set a vim motion to <Space> +  d to search for Code Diagnostics in the current project
			vim.keymap.set("n", "<leader>fd", builtin.diagnostics, { desc = "[F]ind [D]iagnostics" })
			-- set a vim motion to <Space> +  r to resume the previous search
			vim.keymap.set("n", "<leader>fp", builtin.resume, { desc = "[F]inder [P]revious" })
			-- set a vim motion to <Space> + f + f + . to search for Recent Files
			vim.keymap.set("n", "<leader>fr.", builtin.oldfiles, { desc = '[F]ind Recent Files ("." for repeat)' })
			-- set a vim motion to <Space> + b to search Open Buffers
			vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "[F]ind Existing [B]uffers" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			-- get access to telescopes navigation functions
			local actions = require("telescope.actions")

			require("telescope").setup({
				-- use ui-select dropdown as our ui
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
				-- set keymappings to navigate through items in the telescope io
				mappings = {
					i = {
						-- use <cltr> + n to go to the next option
						["<C-n>"] = actions.cycle_history_next,
						-- use <cltr> + p to go to the previous option
						["<C-p>"] = actions.cycle_history_prev,
						-- use <cltr> + j to go to the next preview
						["<C-j>"] = actions.move_selection_next,
						-- use <cltr> + k to go to the previous preview
						["<C-k>"] = actions.move_selection_previous,
					},
				},
				-- load the ui-select extension
				require("telescope").load_extension("ui-select"),
			})
		end,
	},
}
