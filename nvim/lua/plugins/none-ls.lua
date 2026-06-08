return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		-- get access to the none-ls functions
		local null_ls = require("null-ls")
		-- run the setup function for none-ls to setup our different formatters
		null_ls.setup({
			sources = {
				-- setup lua formatter
				null_ls.builtins.formatting.stylua,
				-- setup eslint linter for javascript
				-- require("none-ls.diagnostics.eslint_d"),
				-- setup prettier to format languages that are not lua
				null_ls.builtins.formatting.prettier,

				ensure_installed = { "prettier", "stylua", "google-java-format" }, -- eslint_d
			},
		})

		-- Format code on write
		--    vim.api.nvim_create_autocmd("BufWritePre", {
		--  pattern = "*",
		--  callback = function()
		--    -- Check if the server supports formatting
		--    local clients = vim.lsp.buf_get_clients()
		--    for _, client in pairs(clients) do
		--      if client.supports_method("textDocument/formatting") then
		--        vim.lsp.buf.format({ async = false })
		--        return
		--      end
		--    end
		--    -- If no client supports formatting, you can fallback to an external formatter
		--    -- For example, using null-ls or a custom command
		--  end,
		--})

		-- set up a vim motion for <Space> + c + f to automatically format our code based on which language server is active
		vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, { desc = "[C]ode [F]ormat" })
	end,
}
