vim.g.mapleader = " "

local nnoremap = require("mrtj458.keymap").nnoremap
local vnoremap = require("mrtj458.keymap").vnoremap

nnoremap("<leader>t", "<cmd>NvimTreeToggle<cr>")
nnoremap("<leader>fa", "<cmd>Neoformat<cr>")
nnoremap("<leader>fd", "<cmd>lua vim.lsp.buf.code_action()<cr>")
nnoremap("<leader>gc", "<cmd>Neogit<cr>")

-- Telescope
nnoremap("<leader>ff", "<cmd>Telescope find_files<cr>")
nnoremap("<leader>fg", "<cmd>Telescope live_grep<cr>")
nnoremap("<leader>fb", "<cmd>Telescope buffers<cr>")
nnoremap("<leader>fh", "<cmd>Telescope help_tags<cr>")
nnoremap("<leader>gb", "<cmd>Telescope git_branches<cr>")
nnoremap("<leader>fs", "<cmd>Telescope spell_suggest<cr>")

-- Keep highlight when indenting lines
vnoremap(">", ">gv")
vnoremap("<", "<gv")
