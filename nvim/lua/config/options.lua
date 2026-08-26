-- Left column and similar settings 
vim.opt.number = true -- display line numbers
vim.opt.relativenumber = true -- display relative line numbers
vim.opt.numberwidth = 2 -- set width of line number column
vim.opt.signcolumn = "yes" -- always show sign column
vim.opt.wrap = false -- display lines as single line
vim.opt.scrolloff = 5 -- number of lines to keep above above/below cursor
vim.opt.sidescrolloff = 8 -- number of columns to keep to the left/right of cursor

-- Tab spacing/behavior
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 4 -- number of spaces inserted for each indentation level
vim.opt.tabstop = 4 -- number of spaces inserted for tab character
vim.opt.softtabstop = 4 -- number of spaces inserted for <Tab> key
vim.opt.smartindent = true -- enable smart indentation
vim.opt.breakindent = true -- enable line breaking indentation

-- General Behaviors 
vim.g.loaded_netrw = 1 -- Disable Netrw
vim.g.loaded_netrwPlugin = 1 -- Disable Netrw
vim.opt.backup = false -- Disable backup file creation
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard
vim.opt.conceallevel = 0 -- Show concealed characters in markdown files
vim.opt.fileencoding = "utf-8"
vim.opt.mouse = "a" -- enable all mouse support
vim.opt.showmode = false -- hide mouse display
vim.opt.splitbelow = true -- force horizontal splits below current window
vim.opt.splitright = true  -- force vertical splits right of current window
vim.opt.termguicolors = true -- enable terminal GUI colors
vim.opt.timeoutlen = 1000 -- set timeout for mapped sequences
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 100 -- set faster completion
vim.opt.writebackup = false -- prevent editing of files being edited elsewhere

vim.opt.cursorline = true -- highlight current line

-- Searching behaviors
vim.opt.hlsearch = true  -- Highlight all matches in search
vim.opt.ignorecase = true -- Ignore case in search
vim.opt.smartcase = true -- Match case if explicitly stated

-- Round windows and make hover look good
vim.o.winborder = 'rounded'



 
