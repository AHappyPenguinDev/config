-- Set our leader keybinding to space
-- Anywhere you see <leader> in a keymapping specifies the space key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remove search highlights after searching
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlights" })

-- Exit Vim's terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Toggle line wrap
vim.keymap.set("n", "<leader>uw", ":set wrap!<CR>", { desc = "[U]se wrap" })

-- Easily split windows
vim.keymap.set("n", "<leader>wv", ":vsplit<cr>", { desc = "[W]indow Split [V]ertical" })
vim.keymap.set("n", "<leader>wh", ":split<cr>", { desc = "[W]indow Split [H]orizontal" })

-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", { desc = "Indent left in visual mode" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent right in visual mode" })

-- Navigating buffers
vim.keymap.set("n", "<s-h>", "<Cmd>BufferPrevious<CR>") -- Go to previous buffer
vim.keymap.set("n", "<s-l>", "<Cmd>BufferNext<CR>") -- Go to next buffer
vim.keymap.set("n", "<C-p>", "<Cmd>BufferPick<CR>") -- Flash.nvim but for buffers (pick with letter)

-- Deleting buffers
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "Delete [B]uffer" }) -- Flash.nvim but for buffers (pick with letter)
vim.keymap.set("n", "<leader>bo", ":%bd|e#<CR>", { desc = "[B]uffer Delete [O]thers" }) -- Flash.nvim but for buffers (pick with letter)

-- Closing terminal buffers

-- Close current terminal buffer
vim.api.nvim_set_keymap(
	"n",
	"<leader>cT",
	[[<C-\><C-n>:bd!<CR>]],
	{ desc = "[C]lose current [T]erminal", noremap = true, silent = true }
)

-- Function to close all terminal buffers
vim.api.nvim_create_user_command("CloseTerminals", function()
	for _, buf in ipairs(vim.api.nvim_list_bufs()) do
		if vim.api.nvim_buf_get_option(buf, "buftype") == "terminal" then
			vim.api.nvim_buf_delete(buf, { force = true })
		end
	end
end, {})

-- Mapping to close all terminal buffers
vim.api.nvim_set_keymap(
	"n",
	"<leader>ct",
	":CloseTerminals<CR>",
	{ desc = "[C]lose [T]erminals", noremap = true, silent = true }
)

-- Scrolloff Toggle
vim.keymap.set("n", "<leader>ts", function()
	if vim.opt.scrolloff:get() == 0 then
		vim.opt.scrolloff = 5
	else
		vim.opt.scrolloff = 0
	end
end, { desc = "[T]oggle [S]crolloff" })
