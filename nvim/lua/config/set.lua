vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Disable netrw
vim.g.loaded_netrwPlugin = 1
vim.g.loaded_netrw = 1

-- Tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Hightlight current line
vim.opt.cursorline = true

-- Hide mode
vim.opt.showmode = false

-- Disable nerd fonts
vim.g.have_nerd_font = false

-- Case-insensitive searching unless one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Always show sign column
vim.opt.signcolumn = "yes"

-- Save undo history
vim.opt.undofile = true

-- Decreate update time
vim.opt.updatetime = 250

-- Enable break indent
vim.opt.breakindent = true

-- Decrease mapped sequence wait time
vim.opt.timeoutlen = 300

-- Preview substitutions as you type
vim.opt.inccommand = "split"

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- Highlight search
vim.opt.hlsearch = true
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Keep visual highlight when indenting
vim.keymap.set("v", ">", ">gv")
vim.keymap.set("v", "<", "<gv")

-- Yank to windows clipboard
vim.keymap.set("v", "<leader>y", ":'<,'>w !clip.exe<CR><CR>", { desc = "[Y]ank to Windows clipboard." })

-- Highlight yank
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})

-- Diagnostic keymaps
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })
