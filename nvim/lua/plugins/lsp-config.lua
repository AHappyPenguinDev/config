return {
	{
		"mason-org/mason.nvim",
		config = function()
			-- setup mason with default properties
			require("mason").setup({})
		end,
	},
	-- mason lsp config utilizes mason to automatically ensure lsp servers you want installed are installed
	{
		"mason-org/mason-lspconfig.nvim",
		config = function()
			-- ensure that we have lua language server, typescript launguage server, java language server, and java test language server are installed + linters
			require("mason-lspconfig").setup({ ensure_installed = { "lua_ls", "jdtls" } })
		end,
	},
	-- mason nvim dap utilizes mason to automatically ensure debug adapters you want installed are installed, mason-lspconfig will not automatically install debug adapters for us
	{
		"jay-babu/mason-nvim-dap.nvim",
		config = function()
			-- ensure the java debug adapter is installed
			require("mason-nvim-dap").setup({
				ensure_installed = { "java-debug-adapter", "java-test" },
			})
		end,
	},
	-- utility plugin for configuring the java language server for us
	{
		"mfussenegger/nvim-jdtls",
		dependencies = {
			"mfussenegger/nvim-dap",
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Get access to the lspconfig plugins functions

			vim.lsp.config("lua_ls", {
				cmd = { "lua-language-server", "--stdio" },
				filetypes = { "lua" },
			})

			-- vim.lsp.config('ts_ls', {
			--   cmd = { 'typescript-language-server', '--stdio' },
			--   filetypes = {   'typescript', 'typescriptreact' },
			-- })

			vim.lsp.config("eslint-lsp", {
				cmd = { "eslint-lsp", "--stdio" },
				filetypes = { "script", "javascript" },
			})

			vim.lsp.config("tailwindcss", {
				cmd = { "tailwindcss-language-server", "--stdio" },
				filetypes = {
					"html",
					"css",
					"scss",
					"javascript",
					"javascriptreact",
					"typescript",
					"typescriptreact",
					"vue",
					"svelte",
				},
			})

			vim.lsp.enable("lua_ls")
			vim.lsp.enable("eslint-lsp")
            vim.lsp.enable("tailwindcss")

			-- vim.lsp.enable('ts_ls')

			-- Set vim motion for <Space> + k to show code documentation about the code the cursor is currently over if available
			vim.keymap.set("n", "<Shift>k", function()
				vim.lsp.buf.hover({ border = "single", max_height = 25, max_width = 120 })
			end, { desc = "[C]ode [H]over Documentation" })

			-- Set vim motion for <Space> + c + d to go where the code/variable under the cursor was defined
			vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "[C]ode Goto [D]efinition" })
			-- Set vim motion for <Space> + c + a for display code action suggestions for code diagnostics in both normal and visual mode
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ctions" })
			-- Set vim motion for <Space> + c + r to display references to the code under the cursor
			vim.keymap.set(
				"n",
				"<leader>cr",
				require("telescope.builtin").lsp_references,
				{ desc = "[C]ode Goto [R]eferences" }
			)
			-- Set vim motion for <Space> + c + i to display implementations to the code under the cursor
			vim.keymap.set(
				"n",
				"<leader>ci",
				require("telescope.builtin").lsp_implementations,
				{ desc = "[C]ode Goto [I]mplementations" }
			)
			-- Set a vim motion for <Space> + c + <Shift>R to smartly rename the code under the cursor
			vim.keymap.set("n", "<leader>cR", vim.lsp.buf.rename, { desc = "[C]ode [R]ename" })
			-- Set a vim motion for <Space> + c + <Shift>D to go to where the code/object was declared in the project (class file)
			vim.keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, { desc = "[C]ode Goto [D]eclaration" })
		end,
	},
}
