-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_set_keymap("n", "<C-z>", "<Nop>", { noremap = true, silent = true })
